## `amazoncorretto:8u502-alpine3.22`

```console
$ docker pull amazoncorretto@sha256:987709915d39216a77f511ef3b34f3a081088609cb40aac3a480992b6421083c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u502-alpine3.22` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:a03dbdebe91495278e3028b9982ebf2423b9b4f9f83d54bed1cbbf0dd01d4aa9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.6 MB (104611129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bf977de5085dd15b011273d4731cb98fb41ddf96841e4319f948bd535e57cda`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:10:37 GMT
ARG version=8.502.07.1
# Thu, 23 Jul 2026 23:10:37 GMT
# ARGS: version=8.502.07.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:10:37 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:10:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 23 Jul 2026 23:10:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e1108ac41fc3ffca7ffccf6080aeae21b107c2af443664d0d1a0062b1331c4c`  
		Last Modified: Thu, 23 Jul 2026 23:10:50 GMT  
		Size: 100.8 MB (100823534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u502-alpine3.22` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:f233da8032b3c2acfcd03dcad28ca86b8c051e2abb4d5d24cde9fc443bad21e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.0 KB (257034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36c15a655d0ed006fd4ce3bd175fb632f625e6829e6df14f72c429a40f490dec`

```dockerfile
```

-	Layers:
	-	`sha256:877ab7024d194f5664548809d951f2d4b5b92b73b82f17a77baa91925c3ecdf7`  
		Last Modified: Thu, 23 Jul 2026 23:10:48 GMT  
		Size: 247.7 KB (247679 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9777af6efb71c9191944313bc0da6e27b1c52d97fe99e2dcbe33ecfbaaa60b64`  
		Last Modified: Thu, 23 Jul 2026 23:10:48 GMT  
		Size: 9.4 KB (9355 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8u502-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:a6cfcbc2d86d608d5877f298c95d362a83d3fe94b4f4cabe88dbf4d8fc79950c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104776381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c3f5cf92360e64d3871adbda2a8034c309ace521923fa1cb63bc77790f17480`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:12:17 GMT
ARG version=8.502.07.1
# Thu, 23 Jul 2026 23:12:17 GMT
# ARGS: version=8.502.07.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:12:17 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:12:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 23 Jul 2026 23:12:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0a2c15ae7bd16b467a49c88f3720daa008675bea6bb46462421c806139b674d`  
		Last Modified: Thu, 23 Jul 2026 23:12:32 GMT  
		Size: 100.7 MB (100655895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u502-alpine3.22` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:8f6db47b08f142b0b9014617e4de60815f1c7fb1a6a01ee2a3a14c319d678492
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.3 KB (257269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:374da057197ba418df0aa7b4bc9d2915cea96de01d8f9936b17ae79df7cef7e6`

```dockerfile
```

-	Layers:
	-	`sha256:750e8588b68abaf5e8ff52d41ce901b33807897234f4f06540f57477ccbb1b51`  
		Last Modified: Thu, 23 Jul 2026 23:12:29 GMT  
		Size: 247.8 KB (247811 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dbc74ee3d001f9d1309dfb50ab1fd927c64272a218dff26aa5ccbaad61c8be40`  
		Last Modified: Thu, 23 Jul 2026 23:12:29 GMT  
		Size: 9.5 KB (9458 bytes)  
		MIME: application/vnd.in-toto+json
