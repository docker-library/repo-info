## `amazoncorretto:8u504-alpine3.21-jre`

```console
$ docker pull amazoncorretto@sha256:e430e1418f27f568ff2411f7fc5454f02dabcccc1ca95e8079891b052d92fddc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u504-alpine3.21-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:3be246b68be3bdd819a8442c8f1b3b95e5c95d1c3ab84ad444406f5d6477bfc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45568235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a53dcecb18304719d80a8c0aab154873e41429df08b5d9c135cccd79a85e171`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:13 GMT
ADD alpine-minirootfs-3.21.7-aarch64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:13 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:15:33 GMT
ARG version=8.504.01.1
# Thu, 20 Aug 2026 17:15:33 GMT
# ARGS: version=8.504.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:15:33 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:15:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:2dd7199cff98a7400e801cbfad6de906972a4e3dd0a749d4c1b80f5a1e3e4108`  
		Last Modified: Thu, 16 Apr 2026 05:32:50 GMT  
		Size: 4.0 MB (3994465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de60586cc2b29c310bbcb39e7ffdf77d39e82cadc4da5c746061c7ad56fdcee6`  
		Last Modified: Thu, 20 Aug 2026 17:15:44 GMT  
		Size: 41.6 MB (41573770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u504-alpine3.21-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:0f793bbd7c28031d3381527df965bb2f0830290b12b768e799a941ef42dece98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.6 KB (197569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26a3f3a48b2ed411acb89747f07fd3c0ac7883067adeb496ab3b306f91d48690`

```dockerfile
```

-	Layers:
	-	`sha256:e30860c50cc7f07074da0d8e6402675d9fa03d014c9aa63257ec5e1c148539de`  
		Last Modified: Thu, 20 Aug 2026 17:15:42 GMT  
		Size: 188.8 KB (188833 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7789e6dafbe592325be45dadc219e36246eb83dc674419eabd2baabbce13282`  
		Last Modified: Thu, 20 Aug 2026 17:15:43 GMT  
		Size: 8.7 KB (8736 bytes)  
		MIME: application/vnd.in-toto+json
