## `sapmachine:21-jre-alpine-3.21`

```console
$ docker pull sapmachine@sha256:b8461fb0b5eaabe7d762c26391ab544b2c68323edecdd18474f5f137018b215d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:21-jre-alpine-3.21` - linux; amd64

```console
$ docker pull sapmachine@sha256:bee0a0a1cdbd59d4cfee6ea8ba37787ae71a2ca0058a72d3d5c37d70377fced8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.2 MB (66219961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24f47ad386f1d8825633fe5f0fc73d27d5ddbc3f5a30dfc2bd43d10fe5ff4501`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:19 GMT
ADD alpine-minirootfs-3.21.9-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:19 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 17:52:51 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-21-jre=21.0.13.0.3-r0 # buildkit
# Mon, 26 Oct 2026 17:52:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-sapmachine-jre
# Mon, 26 Oct 2026 17:52:51 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:759efa4719c9a44e7f2561a03bff2434dd66e99c916d2e4d50b055bedf554144`  
		Last Modified: Wed, 21 Oct 2026 20:47:25 GMT  
		Size: 3.6 MB (3625395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4036ce0865d6cf6c0d95d434a9286b0da04220530d7643262f42414340fc9031`  
		Last Modified: Mon, 26 Oct 2026 17:53:04 GMT  
		Size: 62.6 MB (62594566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-alpine-3.21` - unknown; unknown

```console
$ docker pull sapmachine@sha256:e42fa369e6fe786dd90d3f1924b651167cd16c42edb6524e06c7fb9c2532974b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.2 KB (435175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81bdc983311ee619cb0b0b1dc39d7b928d2853950acffc14897f2383f630cf48`

```dockerfile
```

-	Layers:
	-	`sha256:2ad14d55fb21181d541739fb34f3bd1d6e867fdd9f9bc02198cb4e7cb43ed71e`  
		Last Modified: Mon, 26 Oct 2026 17:53:02 GMT  
		Size: 428.2 KB (428195 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:96c48388a1f1e115385af03dd85f07c486ac129565ff4c93b9045f024dbbda5e`  
		Last Modified: Mon, 26 Oct 2026 17:53:02 GMT  
		Size: 7.0 KB (6980 bytes)  
		MIME: application/vnd.in-toto+json
