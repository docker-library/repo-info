## `amazoncorretto:11-alpine3.23-full`

```console
$ docker pull amazoncorretto@sha256:17879912e564509a4151782d7953a486939bd8175806891e61dbe52315925fbf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-alpine3.23-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:299302b1eca6a107482755dc2b4a377be111878012e732fd62ff66730839cc06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.8 MB (147796656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f7046d6f06bfab608c6f91e3000e338de061b872dd463ad769987ed2c33c36f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:35:00 GMT
ARG version=11.0.32.10.1
# Thu, 17 Sep 2026 21:35:00 GMT
# ARGS: version=11.0.32.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:35:00 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:35:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:35:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fca402e114114b351c67fc8bf71deae2d46ffa55d639bb9602d16b5dff602994`  
		Last Modified: Thu, 17 Sep 2026 21:35:17 GMT  
		Size: 143.9 MB (143948149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.23-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:227f7120c757aa99b0545b5e1476d17d6265eace0039a486bdb439de98e70b40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **597.0 KB (597033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec0ffa6cf557e0e4bd86d719d004f3f341d50ed034eee8c77f5f9ec6f4df5f55`

```dockerfile
```

-	Layers:
	-	`sha256:1fe50e90679ee280146ebef2d7a8d7bddf0668cb1e280df6af5712a53e7aed47`  
		Last Modified: Thu, 17 Sep 2026 21:35:14 GMT  
		Size: 587.7 KB (587655 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:756f8597a56155d9fc01ed2159136d0d4a58791fe6833d8451e78afdb6cc54fd`  
		Last Modified: Thu, 17 Sep 2026 21:35:14 GMT  
		Size: 9.4 KB (9378 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-alpine3.23-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:ab272ce65830fd847cd73c7e2324ee939c2e599830de9815d3d13a6b2f463267
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.5 MB (146520117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f6a0da3e97b9702602b04cac4cf4689c163047bc7b2530a6cb9105fed382340`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:36:11 GMT
ARG version=11.0.32.10.1
# Thu, 17 Sep 2026 21:36:11 GMT
# ARGS: version=11.0.32.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:36:11 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:36:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:36:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5f6e292e286c883b3fa06c846decbfb877b4e0925f8979465105a79fd9927bc`  
		Last Modified: Thu, 17 Sep 2026 21:36:29 GMT  
		Size: 142.3 MB (142334061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.23-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:99b751a42b58216dd25b439014c01b8d2aa05788e65f505f517166cf36a974f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **596.5 KB (596541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc2e0a7af9d70b92a5cdd81df7662994d1c8dbbff04c7e8580789c9ca95a8dfd`

```dockerfile
```

-	Layers:
	-	`sha256:4e27686e5ea3083a330615184b97e870aa888c4ae13449b07d3bc05906fe18b8`  
		Last Modified: Thu, 17 Sep 2026 21:36:26 GMT  
		Size: 587.1 KB (587061 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:80d264528b35cce92662774317d48590b3d5e85edc6d175c417b7bfe8ed815de`  
		Last Modified: Thu, 17 Sep 2026 21:36:25 GMT  
		Size: 9.5 KB (9480 bytes)  
		MIME: application/vnd.in-toto+json
