## `sapmachine:27-jre-alpine-3.24`

```console
$ docker pull sapmachine@sha256:4805aecd5726f1534f6d495abf99bc4cc4230f957b89100567ab477bdfa2bcfa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:27-jre-alpine-3.24` - linux; amd64

```console
$ docker pull sapmachine@sha256:59142caa6d1b04c2e9e1df0badee904af357b5a01f0cb0eb9f8a92f8988ecbcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.6 MB (64635517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:433328eebd18fba3bcf33b40784f518cf15853cf17d934c9858e668f3b96e7fe`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 17:49:16 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-27-jre=27.0.1.0.3-r0 # buildkit
# Mon, 26 Oct 2026 17:49:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-sapmachine-jre
# Mon, 26 Oct 2026 17:49:16 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95037d5fe841196cbd8c5f8eb42eb54cee8730eff59b8e8d1a1aaba8e050ef18`  
		Last Modified: Mon, 26 Oct 2026 17:49:29 GMT  
		Size: 60.8 MB (60782408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-alpine-3.24` - unknown; unknown

```console
$ docker pull sapmachine@sha256:1e758624ba1ed225d6f174882bf6ce5e4c1f7300716d939cecbd9c0f3a5f0101
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **438.3 KB (438269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf3bf7baf5a8d708b57a9635c7167fb9264d2c06b83f8739401fd3876226b1e0`

```dockerfile
```

-	Layers:
	-	`sha256:06952940c28da33c51c111d215833bc974566a89806be0491de0c88724c3ae56`  
		Last Modified: Mon, 26 Oct 2026 17:49:27 GMT  
		Size: 431.0 KB (430972 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:037afae9cb2582d1e95efc4852357905c1daabc0a9cb44f050453a6cb7a5d3c4`  
		Last Modified: Mon, 26 Oct 2026 17:49:27 GMT  
		Size: 7.3 KB (7297 bytes)  
		MIME: application/vnd.in-toto+json
