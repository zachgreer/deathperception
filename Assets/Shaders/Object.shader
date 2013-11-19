Shader "Custom/Object" {
	Properties {
		_MainTex ("Color (RGB)", 2D) = "white" {}
		_BumpMap ("Normal", 2D) = "bump" {}
		_Whiteness ("Whiteness", Range(0.0, 1.0)) = 0.0
	}
	SubShader {
		Tags { "RenderType"="Opaque" }
		
		CGPROGRAM
		#pragma surface surf Lambert

		struct Input {
			float2 uv_MainTex;
			float2 uv_BumpMap;
		};

		sampler2D _MainTex;
		sampler2D _BumpMap;
		float _Whiteness;

		void surf (Input IN, inout SurfaceOutput o) {
			o.Albedo = lerp(tex2D(_MainTex, IN.uv_MainTex).rgb, 1,
				_Whiteness);
			o.Normal = UnpackNormal(tex2D(_BumpMap, IN.uv_BumpMap));
		}
		ENDCG
	} 
	FallBack "Diffuse"
}
