## `amazoncorretto:21-alpine3.23-jdk`

```console
$ docker pull amazoncorretto@sha256:a2fc9854387a1f0dbf19a6ba4c1a68631ecbd8e39fd7086969d26d72c1dbbdd3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-alpine3.23-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:b7dd62a407e459ac41b279bc6bbc20c39747c0aad9dfab9c54dd38052c58b2d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.3 MB (166311938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d560fcd281829dd5eb4914260c4011fada55923949032539b463e32512ed8df0`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:13:37 GMT
ARG version=21.0.13.0.11
# Thu, 05 Nov 2026 19:13:37 GMT
# ARGS: version=21.0.13.0.11
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:13:37 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:13:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:13:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94750cfc33072132e9e453600588512764b01757cee9fe218b1c2f69d22ba47e`  
		Last Modified: Thu, 05 Nov 2026 19:13:55 GMT  
		Size: 162.5 MB (162459349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-alpine3.23-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:04ad4dde893d98f33b772f8e7461b5e8d6df7a51a453bf30c9bcf24cb7e9ae73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **591.8 KB (591784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5d21f6712f695b60ac1402e409a6fb8611757bed3962fb9e37433eec353a1ee`

```dockerfile
```

-	Layers:
	-	`sha256:ac1d8fa72f661846b65c35dd8032268958a37392fc3763587a1eb1b7173c7ab0`  
		Last Modified: Thu, 05 Nov 2026 19:13:52 GMT  
		Size: 582.4 KB (582406 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c885737b09e4b513a9ea355a68fffc8f4c3b48ca8955c8eb87cda3bf319b5972`  
		Last Modified: Thu, 05 Nov 2026 19:13:52 GMT  
		Size: 9.4 KB (9378 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-alpine3.23-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:0adb7640f4f8fbe8ab3552ebb0591067485f5e844abb43ec6d54b93002612aea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.7 MB (164666927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe2090150dc6193d982a58e9af4dcbcb7adec287da9598d768f0814a03dbac2c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:09:27 GMT
ARG version=21.0.13.0.11
# Thu, 05 Nov 2026 19:09:27 GMT
# ARGS: version=21.0.13.0.11
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:09:27 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:09:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:09:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13856b8dfb27bf7ce930d2ffdcaa7ccdfaaf6e77b04e8670cd90b73e05a84ce5`  
		Last Modified: Thu, 05 Nov 2026 19:09:46 GMT  
		Size: 160.5 MB (160476706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-alpine3.23-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:219a3d1482b5653e79e112c2143ec09a07f6a5c5f93c6000d8a1040ae40d58ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **590.7 KB (590658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:567c84916e05df40883c5d0ccea688ad00742d3425ed86169a2962cbbbf38758`

```dockerfile
```

-	Layers:
	-	`sha256:f1b3fdec8f983fa4c3a120b4b63a75312843e84206fe55939daed56ab6583308`  
		Last Modified: Thu, 05 Nov 2026 19:09:42 GMT  
		Size: 581.2 KB (581175 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d1f60174812f24b21adca408e14062c90797ba2bb9df308002cb82277ede029d`  
		Last Modified: Thu, 05 Nov 2026 19:09:42 GMT  
		Size: 9.5 KB (9483 bytes)  
		MIME: application/vnd.in-toto+json
