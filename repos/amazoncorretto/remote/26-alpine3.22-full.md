## `amazoncorretto:26-alpine3.22-full`

```console
$ docker pull amazoncorretto@sha256:9358641ca7c548733cc9766fc033b7280d9d1e60e7370a333447005d7114d615
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:26-alpine3.22-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:d820c54fceba8268d00e9d494c4cfe66d83731772c7c2473916cd082278cbaa0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.3 MB (189287430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b7914c2d6a30158020a14b4adcc1cad8157a79f9aeb11af1f87d7f49411c703`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:21:54 GMT
ARG version=26.0.2.11.1
# Thu, 20 Aug 2026 17:21:54 GMT
# ARGS: version=26.0.2.11.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-26=$version-r0 &&     rm -rf /usr/lib/jvm/java-26-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:21:54 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:21:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:21:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a43fb7fa71c48bc60eb5a887d53c560c73dd9d6749b4fcfa8bc42b5301d43646`  
		Last Modified: Thu, 20 Aug 2026 17:22:16 GMT  
		Size: 185.5 MB (185499835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-alpine3.22-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:12389ca99e83586e60a695bf9dc7bec4d6a08495699511a8388be96de40c646a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **597.0 KB (596975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:177f505e1d2a1f8b31aa3c0d92d7c9925d34e31b78fb37a7cc842f0bce5b54e3`

```dockerfile
```

-	Layers:
	-	`sha256:e21b60ac37f29667f7c3c3dc91087082f4082902dce11acfe83e05be0f0a32b1`  
		Last Modified: Thu, 20 Aug 2026 17:22:12 GMT  
		Size: 587.6 KB (587603 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f297bd1d6bc985d4fe15b0f578462bea94a8a46f5aa355fce06c21a9bb6113e`  
		Last Modified: Thu, 20 Aug 2026 17:22:12 GMT  
		Size: 9.4 KB (9372 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:26-alpine3.22-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:4fdaf51cab23bccf35ecfb0dea64b42c1c101fb15e8e37f1b6919004db6fd8a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.2 MB (187150303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91a0cbc86dd2fa99e1e4a601cdf083c2633e702ec42992c0d1277a049712d148`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:38:06 GMT
ARG version=26.0.2.11.1
# Thu, 17 Sep 2026 21:38:06 GMT
# ARGS: version=26.0.2.11.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-26=$version-r0 &&     rm -rf /usr/lib/jvm/java-26-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:38:06 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:38:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:38:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:478e31b2192dcdd151a878bd3248cc14ab5f8248752c32a60d514a6d768cb682`  
		Last Modified: Thu, 17 Sep 2026 21:38:28 GMT  
		Size: 183.0 MB (183027219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-alpine3.22-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:cfb2a208e75a8a025dd220cb10596dcbef88300dc1702ac352657ed0fc81ea82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **596.5 KB (596495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b376a790b1cd6ac3f44e2ae0ca09fc8a495795264a7cfbf0926687d0fdaaca53`

```dockerfile
```

-	Layers:
	-	`sha256:8e1b99ad95fc3792457c6e7c3acd33919143e6430b0bbeb9aa97ea049801ef97`  
		Last Modified: Thu, 17 Sep 2026 21:38:24 GMT  
		Size: 587.0 KB (587019 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ca99411f2f035a28d9239d06bfba57c0cddb2c41608bb0b8781d2efdcad1317`  
		Last Modified: Thu, 17 Sep 2026 21:38:24 GMT  
		Size: 9.5 KB (9476 bytes)  
		MIME: application/vnd.in-toto+json
