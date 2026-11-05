## `amazoncorretto:21-alpine-full`

```console
$ docker pull amazoncorretto@sha256:0a769a6836696873836b1a71cdd0af33e8abe38fec48fe70e913ec3083b06eb2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-alpine-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:c63eaafe89946bd5726530638474b61b334887efc2b356946432514ed0bd42df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.3 MB (166337106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29728ffa0d64a93314027cbfeeee70271bd830e48b1ad06792f619d06ef2e41d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:13:43 GMT
ARG version=21.0.13.0.11
# Thu, 05 Nov 2026 19:13:43 GMT
# ARGS: version=21.0.13.0.11
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:13:43 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:13:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:13:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bfaa716f705e5f81b0f091a1848f6f7455548a6a8c6e49d498f117dc99015e8`  
		Last Modified: Thu, 05 Nov 2026 19:14:02 GMT  
		Size: 162.5 MB (162483433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-alpine-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:d57cef5335d7d1d7a2660c6bb19035c8fd733264a0f867ba6ece0554acb31091
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **594.5 KB (594472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3fe52e66b929fdc9764df117b9e655a2570d3227421a9f2fffbcacada37a911`

```dockerfile
```

-	Layers:
	-	`sha256:fbc8ba438c0a19a1b6bc2909dc54c931dcd7cea8b6259734a809bb2d222648ea`  
		Last Modified: Thu, 05 Nov 2026 19:13:59 GMT  
		Size: 583.8 KB (583785 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3cc2099e4df96f34a533133287f3c2b573f94965b4dc96cb870d94e0ee0ee452`  
		Last Modified: Thu, 05 Nov 2026 19:13:59 GMT  
		Size: 10.7 KB (10687 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-alpine-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:75cf4126b3fae8d440baf145abe7b2225ebc9ce2754ba78358ab9bb12b24219e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.7 MB (164682483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bff91ef13462810f9229a7884ff9347836039acd587144803d5c5c45f1f7ab0b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:40:56 GMT
ARG version=21.0.13.0.11
# Tue, 27 Oct 2026 16:40:56 GMT
# ARGS: version=21.0.13.0.11
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:40:56 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:40:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:40:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:617f2a5265e9d987cab6a522a2223c4472c223a24c4c75dbee1b38f76bc26a86`  
		Last Modified: Tue, 27 Oct 2026 16:41:16 GMT  
		Size: 160.5 MB (160491995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-alpine-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:456b0e2407ec3595455743a5a103a3dc16bb6825e9ce12ccf613685a829dcb30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **593.4 KB (593441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b2473e3ec294631ba09eace138a6801ef3627396131f1ee924ce76fbe04c407`

```dockerfile
```

-	Layers:
	-	`sha256:71e0199f7cb5bf36d25d88c5ce5cab1465b2a29a596acf174ea817186e386447`  
		Last Modified: Tue, 27 Oct 2026 16:41:12 GMT  
		Size: 582.6 KB (582602 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:331863913160f3a0869ee6ee4f1a8c2dcf65f0ffb08eda4d6debe4e015822e83`  
		Last Modified: Tue, 27 Oct 2026 16:41:12 GMT  
		Size: 10.8 KB (10839 bytes)  
		MIME: application/vnd.in-toto+json
