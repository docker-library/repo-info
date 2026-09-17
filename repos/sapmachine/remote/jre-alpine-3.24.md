## `sapmachine:jre-alpine-3.24`

```console
$ docker pull sapmachine@sha256:c5d8274128b84ba76ee9176bdb53ad175c57582a7fd9a3025ca1e8e89bb75bd7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:jre-alpine-3.24` - linux; amd64

```console
$ docker pull sapmachine@sha256:4b72153e806e3160f0e31e47ed9487afc7d3c3749951bda4bebdc260e6cf6c5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.6 MB (64610436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32470760a090d39e79b315e2e89ee9c651d7a624c9e4f905234c3ddda60d7e93`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Wed, 16 Sep 2026 16:35:43 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-27-jre=27-r0 # buildkit
# Wed, 16 Sep 2026 16:35:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-sapmachine-jre
# Wed, 16 Sep 2026 16:35:43 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9168419f60a6e7dbb7ccee8e61628fdd8428262ff654a555565116f5b0495bd2`  
		Last Modified: Wed, 16 Sep 2026 16:35:56 GMT  
		Size: 60.8 MB (60764045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-alpine-3.24` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d06d1cddf3dbf58bd418097ede329e3d93c06cb0ed4b3070017f2669f7a8f1a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **437.5 KB (437529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23c8db965b7a1be23cb0a3cd476813a45f74d39fca07c5fd797bf657603d0013`

```dockerfile
```

-	Layers:
	-	`sha256:6452920c9f2635e7c753f3b3eee8b9351b119bdb8cc5af2fc2371781c755feae`  
		Last Modified: Wed, 16 Sep 2026 16:35:54 GMT  
		Size: 430.6 KB (430594 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e19b51ddfb07411308f2647fc127a0f4c8ed59eeb0f6d232e3ea09bb37fbef98`  
		Last Modified: Wed, 16 Sep 2026 16:35:54 GMT  
		Size: 6.9 KB (6935 bytes)  
		MIME: application/vnd.in-toto+json
