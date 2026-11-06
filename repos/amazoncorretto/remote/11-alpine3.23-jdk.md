## `amazoncorretto:11-alpine3.23-jdk`

```console
$ docker pull amazoncorretto@sha256:4b005dfba409cae583181713065b2c50635aba71aa83654390ce03147c60c5e7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-alpine3.23-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:42642a723ff350502cd966095d47591b3cfce78cb28a33316be1b757daed665d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.9 MB (147854234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7f27715d2c446773d521fdf16ea5a2d7d08b44f6946106a8de028f321137ba2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:12:45 GMT
ARG version=11.0.33.0.10
# Thu, 05 Nov 2026 19:12:45 GMT
# ARGS: version=11.0.33.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:12:45 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:12:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:12:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af3c3d7c516dc984daaa8446d2905967e27c4594160e85fceb6bb7411b711e5e`  
		Last Modified: Thu, 05 Nov 2026 19:13:01 GMT  
		Size: 144.0 MB (144001645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.23-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:6b0dacd55aabc34f08cb8f934b773915fa2a1545c928bece3dbe31191695ce38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **597.0 KB (597030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44afeac865fef67789582092c66dfd6a3203274c7004d9d3e62e104af102c247`

```dockerfile
```

-	Layers:
	-	`sha256:b3aeec60827f754451f3f8908fd7cba6d8a111e011b68d4539b87e813b6927c4`  
		Last Modified: Thu, 05 Nov 2026 19:12:58 GMT  
		Size: 587.7 KB (587651 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d1bcdb227ec81ebef3e198e1954a2abbcbf089dfe5c677fcf9a38ce28e3ef17a`  
		Last Modified: Thu, 05 Nov 2026 19:12:58 GMT  
		Size: 9.4 KB (9379 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-alpine3.23-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:8b90fda9bedc779de8d6ddba130205514402de008a6b2293ca3381ae2af7435f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.6 MB (146557322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d17e11794254892e4a9c0b2133293138cf21fe2638855e5528ae482d21773a21`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:08:32 GMT
ARG version=11.0.33.0.10
# Thu, 05 Nov 2026 19:08:32 GMT
# ARGS: version=11.0.33.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:08:32 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:08:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:08:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a2f0781af731e19593c19e136147498db1b415cae4d5b12ffebf2295cf10686`  
		Last Modified: Thu, 05 Nov 2026 19:08:50 GMT  
		Size: 142.4 MB (142367101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.23-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:eb4231a3213d6690a955f519a51244851b5b91636a6f9d3ba2f14bdd292ccbc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **596.5 KB (596540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4b2f7794fcdc7641926d854dcba9e6d7e4a7eab4fa84a01b02e040fd136f183`

```dockerfile
```

-	Layers:
	-	`sha256:cbee8f30bb9c1778a8dc27877d8cadc59b5d8905e4ea1823b433d222c994d171`  
		Last Modified: Thu, 05 Nov 2026 19:08:47 GMT  
		Size: 587.1 KB (587057 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a7b406ee703fa7a943b7bcf93ccc9375b4e0fafbb94b5d2af9dc5a9ef59e6ab`  
		Last Modified: Thu, 05 Nov 2026 19:08:47 GMT  
		Size: 9.5 KB (9483 bytes)  
		MIME: application/vnd.in-toto+json
