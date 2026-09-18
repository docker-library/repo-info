## `amazoncorretto:26-alpine-full`

```console
$ docker pull amazoncorretto@sha256:f15be84baf2a925863024da36b3c26d0d22222c076c8df828d36ca48f71bd30d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:26-alpine-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:1a86341181e279769fd280de946f73c2a9238229180455aa72165e2918b8cff1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.4 MB (189365609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:552d3ba175cb50ed6abec4c774d1d8c7e7a22b9e8e4ef29ae6f959d318690352`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:21:57 GMT
ARG version=26.0.2.11.1
# Thu, 20 Aug 2026 17:21:57 GMT
# ARGS: version=26.0.2.11.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-26=$version-r0 &&     rm -rf /usr/lib/jvm/java-26-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:21:57 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:21:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:21:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fec50a2e4ad9419a2807d6b697182fc9c6deafd1f77e70c0226d99d6d2102870`  
		Last Modified: Thu, 20 Aug 2026 17:22:20 GMT  
		Size: 185.5 MB (185519218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-alpine-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:6108edea2fadd91d4f302f31c51798379624d06581d4526116aaaffdbc310084
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **598.4 KB (598374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73cf309d4283aa634db8e6fd5fa31b3e5298b2904ce38c6d810edd8be2c71a8a`

```dockerfile
```

-	Layers:
	-	`sha256:63d8ba0ebdc9a6acccf2439a096a62548f9013ffca683e712c76d30729eaa41d`  
		Last Modified: Thu, 20 Aug 2026 17:22:16 GMT  
		Size: 587.7 KB (587696 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba4a3408600337bddf459824760a04af25524e3337fa2466d42af4d771d1540a`  
		Last Modified: Thu, 20 Aug 2026 17:22:16 GMT  
		Size: 10.7 KB (10678 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:26-alpine-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:72f75192a9d9b2c92bdc96fe33bc1ccaca11f7d5d4fb305ca57fe495483cb25b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.2 MB (187232535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e6c52e8a63cc28b82e473b38903b779271f1b6ec7af1508a0f91bffd43b25cb`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:38:18 GMT
ARG version=26.0.2.11.1
# Thu, 17 Sep 2026 21:38:18 GMT
# ARGS: version=26.0.2.11.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-26=$version-r0 &&     rm -rf /usr/lib/jvm/java-26-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:38:18 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:38:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:38:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1463c58dd4f59c7fe3bd0302ace2d98a0095a5d6cb6a5ee137ede748360aa2af`  
		Last Modified: Thu, 17 Sep 2026 21:38:40 GMT  
		Size: 183.0 MB (183044876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-alpine-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ebce8ab97eac2af94383ea72cd91750a2ba88bdb913becc50b9d3a5e4ac3392d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **597.3 KB (597340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14ac8f34b0b23947b79fe856d22eb13c88eb410f7988eb01c8bc20f8ea018849`

```dockerfile
```

-	Layers:
	-	`sha256:eb5bc61aba9d83d27770735573a9509ea1f495fff96a671c5e6e104b07d83fa7`  
		Last Modified: Thu, 17 Sep 2026 21:38:36 GMT  
		Size: 586.5 KB (586510 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b69b48da010c84f4f484ceff357b1d718e841d3375403ac0899db0e20326cf0`  
		Last Modified: Thu, 17 Sep 2026 21:38:36 GMT  
		Size: 10.8 KB (10830 bytes)  
		MIME: application/vnd.in-toto+json
