Shader "Custom/Object" {
	Properties {
		_MainTex ("Color (RGB)", 2D) = "white" {}
		_BumpMap ("Normal", 2D) = "bump" {}
		_Whiteness ("Whiteness", Range(0.0, 1.0)) = 0.0
		_Alpha ("Alpha", Range(0.0, 1.0)) = 1.0
	}
	SubShader {
		Tags { "Queue"="Transparent" "RenderType"="Transparent" }
		
		CGPROGRAM
		#pragma surface surf LambertOverride alpha
		
		float _Whiteness;
		
		half4 LightingLambertOverride(SurfaceOutput s, half3 lightDir,
			half atten)
		{
			half nDotL = dot(s.Normal, lightDir);
			half4 c;
			c.rgb = lerp(s.Albedo * _LightColor0.rgb * (nDotL * atten * 2),
				1, _Whiteness);
			c.a = s.Alpha;
			return c;
		}

		struct Input {
			float2 uv_MainTex;
			float2 uv_BumpMap;
		};

		sampler2D _MainTex;
		sampler2D _BumpMap;
		float _Alpha;

		void surf (Input IN, inout SurfaceOutput o) {
			o.Albedo = tex2D(_MainTex, IN.uv_MainTex).rgb;
			o.Alpha = _Alpha;
			o.Normal = UnpackNormal(tex2D(_BumpMap, IN.uv_BumpMap));
		}
		ENDCG
	}
	FallBack "Diffuse"
}
