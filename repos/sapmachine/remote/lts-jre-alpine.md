## `sapmachine:lts-jre-alpine`

```console
$ docker pull sapmachine@sha256:62f06384d641248f245565e9fc5966105b2a3f64d25258024b8e783aec640056
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:lts-jre-alpine` - linux; amd64

```console
$ docker pull sapmachine@sha256:cf8657d62da382eca49d64cbe621ad41f313271544fc475148c01ba1dce54ebb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.2 MB (64171803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:086408365102b36f86931051ef5f4f4a6e642cc0825f7ffe545f10fe16c2a991`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:56:57 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-25-jre=25.0.4.1-r0 # buildkit
# Thu, 17 Sep 2026 21:56:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-sapmachine-jre
# Thu, 17 Sep 2026 21:56:57 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68b41e131addb4da653ad8d2243ec41c0f7057ea33dbf3f0ffec69ca40bb0cbd`  
		Last Modified: Thu, 17 Sep 2026 21:57:08 GMT  
		Size: 60.3 MB (60323296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-alpine` - unknown; unknown

```console
$ docker pull sapmachine@sha256:91738fce5ac7a343e3edddc8c8fa2adebae2d2d63986c2854ad21a43cf00a335
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **442.1 KB (442066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba5106b3eecdd8b4556c61d9a85cf3f15a7fa0ae339f70660b221eda75c7bb2d`

```dockerfile
```

-	Layers:
	-	`sha256:376db23827cfd76ebb09379c8278d893114797cd5ce170972a5ff304b467b9ce`  
		Last Modified: Thu, 17 Sep 2026 21:57:07 GMT  
		Size: 433.8 KB (433793 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:411e0d3c03b7bd3410960ead72c012a399583b43222921c341025a8b52972063`  
		Last Modified: Thu, 17 Sep 2026 21:57:07 GMT  
		Size: 8.3 KB (8273 bytes)  
		MIME: application/vnd.in-toto+json
