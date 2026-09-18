## `amazoncorretto:11-alpine-full`

```console
$ docker pull amazoncorretto@sha256:8c7eab035d25be78ae436ce899b8314b7c3891a995d1a8e516f60acff9e4e683
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-alpine-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:9fb6ee7c4bec8855e66f3a321a1835b69ac511ffbde8eb7888f737d21489a398
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.8 MB (147823121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e23dc26916d8425febc4655caf0dde5e8ebdc4c36f7f9202dc7d0d9fc31da52`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:35:13 GMT
ARG version=11.0.32.10.1
# Thu, 17 Sep 2026 21:35:13 GMT
# ARGS: version=11.0.32.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:35:13 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:35:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:35:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07b6ce282e213022a087184e75197e2dedc01c23d7f25cb90d8e375f9b9e4276`  
		Last Modified: Thu, 17 Sep 2026 21:35:29 GMT  
		Size: 144.0 MB (143973383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:47136afae6b2c30ac0bf35fc204ba0141a9fbf7b9b89ced52b9b82ac658cedd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **599.7 KB (599721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:021db3a8355b3e3f6703c9cbfd6f687a7744d8a46ab0ef66f8d0e5048192cc31`

```dockerfile
```

-	Layers:
	-	`sha256:f66ffea232147e20ee051acd7e38c28a6bd6acefcc7f6eb1a818c684dc470739`  
		Last Modified: Thu, 17 Sep 2026 21:35:26 GMT  
		Size: 589.0 KB (589034 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47e5d3ea9228f44444095e93552709a0030f2c52aed19faf7d1340fca698e576`  
		Last Modified: Thu, 17 Sep 2026 21:35:26 GMT  
		Size: 10.7 KB (10687 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-alpine-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:eb6c45085f333ba6bcdbca874e809ec7874930e4d8cc35fd33665300c672f499
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.5 MB (146534701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:099f5b3d124d2dcd1e7e3b88592de70a4e36d0de74d4b91275f54e3a731da4dc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:36:23 GMT
ARG version=11.0.32.10.1
# Thu, 17 Sep 2026 21:36:23 GMT
# ARGS: version=11.0.32.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:36:23 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:36:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:36:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6266a4f2725289a4f2a335fbcc41cafc2a1ebf7ece6ad6513de60a6cd0240cc`  
		Last Modified: Thu, 17 Sep 2026 21:36:41 GMT  
		Size: 142.3 MB (142347042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:a4cad4dd9bbd00c5756d2e5ea754174733a5a5764f775ee362a981909cd17749
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **599.3 KB (599327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e26eb7e90f0bba40fc008e7ec401540cf4cc446eae5ef34668e5437ee9ad988b`

```dockerfile
```

-	Layers:
	-	`sha256:8c291c9fcc71c579592aaee81905f7631020c663152303cd2a607c38daa75513`  
		Last Modified: Thu, 17 Sep 2026 21:36:37 GMT  
		Size: 588.5 KB (588488 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:77a0ab713d9e29abe919c71fd02f5103e7596f0958c8a5b11f4c3e01668e8ed6`  
		Last Modified: Thu, 17 Sep 2026 21:36:38 GMT  
		Size: 10.8 KB (10839 bytes)  
		MIME: application/vnd.in-toto+json
