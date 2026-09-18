## `amazoncorretto:17-alpine3.21-full`

```console
$ docker pull amazoncorretto@sha256:7dff617b7f50825af7e276445c04195bafdc53aecaf7de8c2dcbec72a0d7a925
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-alpine3.21-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:ecef58a084f555a8aae96e2fa2e9c5f9d03329897c0a69ec2786bd85d4aae56c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.6 MB (152579224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6223dfcf2b98f0876004847a1cb9413920233e3827c916f16ef8382c21bb8af`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:20:02 GMT
ARG version=17.0.20.10.1
# Thu, 20 Aug 2026 17:20:02 GMT
# ARGS: version=17.0.20.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:20:02 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:20:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:20:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:828b758533d4c7bed1aacc54ed2619809affb2c087d64bee0eea995fb3ac5c6e`  
		Last Modified: Thu, 20 Aug 2026 17:20:19 GMT  
		Size: 148.9 MB (148932349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine3.21-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:f5ecbee5e65f6853d328edb536ab60d860874c3c69403b54a1e5e578cf35ebd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **596.6 KB (596592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d53dbc886661b35f28a971be32f513aeb76371b33a8a7dacfe0378a38915bbf1`

```dockerfile
```

-	Layers:
	-	`sha256:c5a935aa0536be43c8c3e64b139c50468553cd7f74c808c47f6dc94ff8eb1aef`  
		Last Modified: Thu, 20 Aug 2026 17:20:16 GMT  
		Size: 587.2 KB (587213 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55a876f54155875c1e67b37f4bf77776b3bc2cfa49cf72d81a2a8b9281862e12`  
		Last Modified: Thu, 20 Aug 2026 17:20:16 GMT  
		Size: 9.4 KB (9379 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-alpine3.21-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:10c97d3861eb9cfd1993eb52cd76dd7d4f81ca6d1d4bd71f2ea8e53aee5760eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.3 MB (151328680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be17e5d4488f3c614a6d10c7e609d9cca9a154f806e53c6c47b02a55b993c928`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:00 GMT
ADD alpine-minirootfs-3.21.8-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:00 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:36:32 GMT
ARG version=17.0.20.10.1
# Thu, 17 Sep 2026 21:36:32 GMT
# ARGS: version=17.0.20.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:36:32 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:36:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:36:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:248d4d6535e8932d2b51acdf49a4ca8d87629cd408a02bd59788b4c31e3d0c28`  
		Last Modified: Thu, 17 Sep 2026 20:38:06 GMT  
		Size: 4.0 MB (3974501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3f87abb6469d1da47a0afb2a8f6b67e8852abf4c467d1e3e1255c87505bb952`  
		Last Modified: Thu, 17 Sep 2026 21:36:51 GMT  
		Size: 147.4 MB (147354179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine3.21-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ebc732446638d6841f1f38404d5345e21ada0b2fcd61395a4db3598299c93515
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **596.1 KB (596115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48b1b126c55c727211a2b1dae809ad9c9e51c5c1ade4969aea982c077ce4f282`

```dockerfile
```

-	Layers:
	-	`sha256:78a3d2d83c22a1bcb6423ce5cc7f60ed1fc284926d0beb1f06b40c976172942e`  
		Last Modified: Thu, 17 Sep 2026 21:36:47 GMT  
		Size: 586.6 KB (586632 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dcab15939d3f59e8ae8caa590ee5d4a8a0b7ac405d2f1e91c1762c9f252996bb`  
		Last Modified: Thu, 17 Sep 2026 21:36:47 GMT  
		Size: 9.5 KB (9483 bytes)  
		MIME: application/vnd.in-toto+json
