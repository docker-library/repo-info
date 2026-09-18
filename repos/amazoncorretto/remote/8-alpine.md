## `amazoncorretto:8-alpine`

```console
$ docker pull amazoncorretto@sha256:5df16ea25ae860391e27024e869ba9e651d29b1ba25dd2a8741f4962d0afcaf1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-alpine` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:c173f91d086175b1591caf2c1228f0923fdd6695b8295b003c4b9301bd6933a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.7 MB (104664392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f842ed366dbdc56b912848e1df1977aabe60c3c5054d45a7af026f20d328ad7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:19:02 GMT
ARG version=8.504.01.1
# Thu, 20 Aug 2026 17:19:02 GMT
# ARGS: version=8.504.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:19:02 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:19:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:19:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ef346e628b487331bf57ca859801362389aac975307921639c8cc83704a107a`  
		Last Modified: Thu, 20 Aug 2026 17:19:17 GMT  
		Size: 100.8 MB (100818001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:a6d5d32d346004cc78e964c086e33cf95806f8eebd3c8634ff19d38d88a01112
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.4 KB (258413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfa364b693defc950fe7497f3b153f87723afc9e36a038b35eb201092f480eed`

```dockerfile
```

-	Layers:
	-	`sha256:54a9c897e45f7f6d63c632100ec8bf0ac415c0b930ec104f8c9938ab03ab4536`  
		Last Modified: Thu, 20 Aug 2026 17:19:14 GMT  
		Size: 247.8 KB (247760 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f4670d888ac74d29b2258b2efabbb3b51a8b05a95ecc81ff63933741975657a`  
		Last Modified: Thu, 20 Aug 2026 17:19:14 GMT  
		Size: 10.7 KB (10653 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-alpine` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:ffb026a5c55490c549a1ac301dc1150af6da2408e7eaa43a7dfdcd331aea40b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104838622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd49fec383ae072c4ab12e81781913924756c4bc770c336e15d548c1a6f07ff5`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:35:43 GMT
ARG version=8.504.01.1
# Thu, 17 Sep 2026 21:35:43 GMT
# ARGS: version=8.504.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:35:43 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:35:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:35:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac5be26254efa5a3ba84ffd69f8e608f000096202c08626edb18a4dc651a7783`  
		Last Modified: Thu, 17 Sep 2026 21:35:57 GMT  
		Size: 100.7 MB (100650963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ed0fda45967197b1285ef8aa7019f773df367ca9170c9a5bedc84e8d455adfec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.1 KB (258095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:355b8290a51b61b310069b58c40fce5a5c81f53a3cacabc3df581fea54abec3b`

```dockerfile
```

-	Layers:
	-	`sha256:281a5db8dfbcb04de652178940d53c028ffdc7ecd792cbf987a31144d0ae3859`  
		Last Modified: Thu, 17 Sep 2026 21:35:54 GMT  
		Size: 247.3 KB (247290 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7478cd0ec06dbee7b86c607d762a2390843da6c416176a42e439cf656e3ac8d1`  
		Last Modified: Thu, 17 Sep 2026 21:35:54 GMT  
		Size: 10.8 KB (10805 bytes)  
		MIME: application/vnd.in-toto+json
