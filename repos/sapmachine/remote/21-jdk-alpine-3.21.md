## `sapmachine:21-jdk-alpine-3.21`

```console
$ docker pull sapmachine@sha256:2d035bd8e4a495a3b85d2fd708d5e3ae404128c79bcbe8b723ff789dbdd46c62
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:21-jdk-alpine-3.21` - linux; amd64

```console
$ docker pull sapmachine@sha256:f7a6ab3f3189403bf4a7a9925a3163e3e129f9da55a3ee7e4aafdb64559676a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.3 MB (223274934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d46598f7e0ef67eceacc4769253ba0c31b3b8834c41f3a86e3e9bbcce19dad43`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:19 GMT
ADD alpine-minirootfs-3.21.9-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:19 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 17:52:57 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-21-jdk=21.0.13.0.3-r0 # buildkit
# Mon, 26 Oct 2026 17:52:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-sapmachine-jdk
# Mon, 26 Oct 2026 17:52:57 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:759efa4719c9a44e7f2561a03bff2434dd66e99c916d2e4d50b055bedf554144`  
		Last Modified: Wed, 21 Oct 2026 20:47:25 GMT  
		Size: 3.6 MB (3625395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a515d46de0746ae4298127ab076bb377bdce8c5d14beb04a308e2c3a003285b`  
		Last Modified: Mon, 26 Oct 2026 17:53:16 GMT  
		Size: 219.6 MB (219649539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-alpine-3.21` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d946f245e6334a981f05e24c24a5e939e29b08533b72b9a5a2b0033f6df3c291
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **523.7 KB (523721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1f186615ab1e14b02cd3ed18ab0508ab4ffbf43d53e3129a09654e19a09b0f9`

```dockerfile
```

-	Layers:
	-	`sha256:741f19caada56d3c554ecaa7cfc516679edfa64d4d49f67062c7c0c281574935`  
		Last Modified: Mon, 26 Oct 2026 17:53:13 GMT  
		Size: 516.1 KB (516074 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd470b2f28fb488cf7b7e48fca6dd3d5b9685644a3eb5a2da68c3e02cb2f4872`  
		Last Modified: Mon, 26 Oct 2026 17:53:12 GMT  
		Size: 7.6 KB (7647 bytes)  
		MIME: application/vnd.in-toto+json
