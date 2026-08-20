## `amazoncorretto:21-alpine`

```console
$ docker pull amazoncorretto@sha256:ca805c030d45db58e93b2276580ea141aa7d33497009ab4c6b706c587a97e9b1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-alpine` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:e29d94d3749fa3d76fd11eed59ef466a99dee7a327d2640e831d1d35ad195c6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.1 MB (166050216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c6c8895b62ab0017abb7d8bdde69dd939ba43e7c63699eb2e6335409d0a7f58`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:20:58 GMT
ARG version=21.0.12.9.1
# Thu, 20 Aug 2026 17:20:58 GMT
# ARGS: version=21.0.12.9.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:20:58 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:20:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:20:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1651595685cc0eac88660f9ca02456ac3b15e74180cd422f506f1015521664e5`  
		Last Modified: Thu, 20 Aug 2026 17:21:16 GMT  
		Size: 162.2 MB (162203825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-alpine` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:627e302feadf8197b9e410659982ce67d97e7c1dae6be687eee17391cae707b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **594.5 KB (594469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77a998c22f13b318053308aa986259bb43ca05ae90ff1ef80069a5882155d12a`

```dockerfile
```

-	Layers:
	-	`sha256:94cf155ad6d1a596d9119ed6eb1dcf00df91126bf56f4da46becc32e6c44dd42`  
		Last Modified: Thu, 20 Aug 2026 17:21:13 GMT  
		Size: 583.8 KB (583787 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb6a1f7007a93f0c8bb2831619fb182d799075963a324fd0f375aacfe7bb5c78`  
		Last Modified: Thu, 20 Aug 2026 17:21:13 GMT  
		Size: 10.7 KB (10682 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-alpine` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:af12080656ed3be80f11ab11c2412d4224b89122e05f6e73741e6518a68a0cec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164377696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:010c8c4a7b45741cce397b9bd0935b7914f21d57524a3ab44d411f821de5dba8`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:17:36 GMT
ARG version=21.0.12.9.1
# Thu, 20 Aug 2026 17:17:36 GMT
# ARGS: version=21.0.12.9.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:17:36 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:17:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:17:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fe7fe6061c759d1f1ca63fba415c2d644a2548f5b2cda2089ada77257dc6282`  
		Last Modified: Thu, 20 Aug 2026 17:17:55 GMT  
		Size: 160.2 MB (160194659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-alpine` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:049d6210052e7975f8077e632c4a441cd61f7600b2f5f9f3cf882e9b7f544cfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **593.4 KB (593438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89b71f7e987e5311c03fb97cfde25b4af59eb6756f58c3e8ae7750fbed9718fe`

```dockerfile
```

-	Layers:
	-	`sha256:1d2ccad20bb60870861822106d50dc1e674bcb3f799e689986cdd6d90c7da7cd`  
		Last Modified: Thu, 20 Aug 2026 17:17:52 GMT  
		Size: 582.6 KB (582604 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bfc54cfb3c239154a19394149a5745c1e5991537e8fa020c33a476e5020dd781`  
		Last Modified: Thu, 20 Aug 2026 17:17:51 GMT  
		Size: 10.8 KB (10834 bytes)  
		MIME: application/vnd.in-toto+json
