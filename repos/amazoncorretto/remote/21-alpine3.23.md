## `amazoncorretto:21-alpine3.23`

```console
$ docker pull amazoncorretto@sha256:0e484d3d4849c47b199223d186ff0b849786803df63182c8c211a8bfb63123ab
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-alpine3.23` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:b713f192c911702536dde36f4cceb54ddc1f2601305b7180e1cd45ee018b88ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.0 MB (166028112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09ebcdea2a6259c6a0bd49f5fa00a6ec911aa2b1205f88b169677a7a13579c8c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:36:12 GMT
ARG version=21.0.12.9.1
# Thu, 17 Sep 2026 21:36:12 GMT
# ARGS: version=21.0.12.9.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:36:12 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:36:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:36:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b13d8db61c2b4d5a9128681e0f58acde74431df4e1b31a87911e49acc872d0c`  
		Last Modified: Thu, 17 Sep 2026 21:36:29 GMT  
		Size: 162.2 MB (162179605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-alpine3.23` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:f06d07b8bcdbf683a71ef6b45eff03602640015b87486012aa6920a597f8bb5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **591.8 KB (591782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dc758440e39f53d71f1b886c86822aaadb26e5e46fd59cddede9106b3f6a8d7`

```dockerfile
```

-	Layers:
	-	`sha256:d4ea3947774d71f3c0161eae1b4c4879d5cc350bb253635139946db72b89a67d`  
		Last Modified: Thu, 17 Sep 2026 21:36:26 GMT  
		Size: 582.4 KB (582408 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d492f3c4661ea217bedb97f6180e81ed2b6c2179e70836d0150df51cda13f9d3`  
		Last Modified: Thu, 17 Sep 2026 21:36:26 GMT  
		Size: 9.4 KB (9374 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:4f47f878959a020a93b20a3091227ecd7f73532d98a2a7392a16ad5b70e3cb27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164365203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81d66550314decda265b61e12f28b18aa9f583882388e3532c7ac1cd61e17258`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:37:06 GMT
ARG version=21.0.12.9.1
# Thu, 17 Sep 2026 21:37:06 GMT
# ARGS: version=21.0.12.9.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:37:06 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:37:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:37:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e0ec7e4eaf54cc152083b46f452b44ea4096938a4690af262d80132f375f4d9`  
		Last Modified: Thu, 17 Sep 2026 21:37:25 GMT  
		Size: 160.2 MB (160179147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-alpine3.23` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:f120f3a4ed67846840a684526d014918d40e34dd36a705d77dba6614a9c09d5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **590.7 KB (590655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84adf6d87823030c40090b4ea09b290a979ed4db1bc96cbf8f72cbf3173bc567`

```dockerfile
```

-	Layers:
	-	`sha256:21b9f22095048c2a3b7a721567b28363dc809c4d961386b601ef992eebbd4322`  
		Last Modified: Thu, 17 Sep 2026 21:37:22 GMT  
		Size: 581.2 KB (581177 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae6ee8a540dd149425ddbb7f53779cc40089cdd98db54743cd529ce2719b304b`  
		Last Modified: Thu, 17 Sep 2026 21:37:22 GMT  
		Size: 9.5 KB (9478 bytes)  
		MIME: application/vnd.in-toto+json
