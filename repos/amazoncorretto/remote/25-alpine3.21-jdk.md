## `amazoncorretto:25-alpine3.21-jdk`

```console
$ docker pull amazoncorretto@sha256:1f308c066b782d32ac039d3729eae9b0318b6ca795d9e508d41851d646fd2eee
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-alpine3.21-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:ccc63100e142a9febda77e6c68ab0f0049a739d2582181e5665e4b0fe6e8583f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.1 MB (185141841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5199cdfdbd1d244a7004c869a7cd296a3fafeea21b8f3924d9eb0a844fb9807`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:21:15 GMT
ARG version=25.0.4.8.1
# Thu, 20 Aug 2026 17:21:15 GMT
# ARGS: version=25.0.4.8.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:21:15 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:21:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:21:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fc82b50c609f6e2da62ef4623f8281d1ff9922bed4a6acd99dc9d852ce5454b`  
		Last Modified: Thu, 20 Aug 2026 17:21:37 GMT  
		Size: 181.5 MB (181494966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine3.21-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:66ab20708b9e31f674c23f76d42ac788b4745c722481964052c109477b1f6604
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **605.6 KB (605581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9fdd878151f8903ddcec14752cf88dd9b4bb4ead0162f58b68d260bd28afe72`

```dockerfile
```

-	Layers:
	-	`sha256:c649a6d405aa77ec7f6ed7d1252f93d37188e0edb0e88bff520e850c20842e48`  
		Last Modified: Thu, 20 Aug 2026 17:21:33 GMT  
		Size: 596.2 KB (596210 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:08d4d349fa893b849a05a62d8ab9717630baf5ef16c5fb546ec5431316a334fc`  
		Last Modified: Thu, 20 Aug 2026 17:21:32 GMT  
		Size: 9.4 KB (9371 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-alpine3.21-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:171db8dce9763d1e69703ee34a86672cc57c501eb98c1f6e2f4ea30fe5110895
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.0 MB (183039962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65b16949b0296d26ac70618380fa2d50feb5eddca97344860eebd14e16d8b716`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:00 GMT
ADD alpine-minirootfs-3.21.8-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:00 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:37:32 GMT
ARG version=25.0.4.8.1
# Thu, 17 Sep 2026 21:37:32 GMT
# ARGS: version=25.0.4.8.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:37:32 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:37:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:37:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:248d4d6535e8932d2b51acdf49a4ca8d87629cd408a02bd59788b4c31e3d0c28`  
		Last Modified: Thu, 17 Sep 2026 20:38:06 GMT  
		Size: 4.0 MB (3974501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:782d58ce328a00378d25cd7f4c268bd7dd5433385b04f4a624157082788d5205`  
		Last Modified: Thu, 17 Sep 2026 21:37:53 GMT  
		Size: 179.1 MB (179065461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine3.21-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:65f417e2dae863298d90f88f3719a602e79a6511e2c4d18b221d7c600bc9f533
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **605.1 KB (605101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2eabffaee8d84f3a72a078f0b885f45feb8bad293211beef14fd6fef7fda5d0`

```dockerfile
```

-	Layers:
	-	`sha256:3c0a16ae1cddbc695000d7f6f08ed68b506bc098e8dd38a54146a2290d6b9c4c`  
		Last Modified: Thu, 17 Sep 2026 21:37:49 GMT  
		Size: 595.6 KB (595626 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b127a710bed240a4b3977fa5abce93d5c635ad61030176dfe85ead417a31f2d`  
		Last Modified: Thu, 17 Sep 2026 21:37:48 GMT  
		Size: 9.5 KB (9475 bytes)  
		MIME: application/vnd.in-toto+json
