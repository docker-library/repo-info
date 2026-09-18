## `sapmachine:21-alpine-3.23`

```console
$ docker pull sapmachine@sha256:02290c00a1b0198ab959133fabb6f14be93c94277170432b1b626b3d8bd5ce94
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:21-alpine-3.23` - linux; amd64

```console
$ docker pull sapmachine@sha256:e414293221dd0dc56cf69c80eb7247e85ca892b0b61d964f0c19f2f5726075c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.7 MB (223680415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3cd3f0ee19f7a392aa0957eeb35db18f8676d04e7d61eb1cdfa6e6b0e8f1c4d`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:57:32 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-21-jdk=21.0.12.1-r0 # buildkit
# Thu, 17 Sep 2026 21:57:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-sapmachine-jdk
# Thu, 17 Sep 2026 21:57:32 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61cf425210d1906ed85e107c818f0db87ec0ddfae163011688e91e88bb2dade3`  
		Last Modified: Thu, 17 Sep 2026 21:57:54 GMT  
		Size: 219.8 MB (219831908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-alpine-3.23` - unknown; unknown

```console
$ docker pull sapmachine@sha256:6ec8cdc66b150841bf18d4e4c287bbd82e01b486ef925cb9bef0449971382576
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **523.5 KB (523506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b2aea86d61482fb2f394f379d5a8fc206a65db161bd286cc6bb1b2710f5d6e7`

```dockerfile
```

-	Layers:
	-	`sha256:34a123871498069744ae56efcad5aefa62026937ca00a480dc641fbf7d932ee1`  
		Last Modified: Thu, 17 Sep 2026 21:57:49 GMT  
		Size: 514.6 KB (514581 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88aea5ada45d367769df24ad1630a50f373358db0f4641c15f4fdd2bb0f8af93`  
		Last Modified: Thu, 17 Sep 2026 21:57:49 GMT  
		Size: 8.9 KB (8925 bytes)  
		MIME: application/vnd.in-toto+json
