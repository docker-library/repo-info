## `amazoncorretto:26-alpine3.23-full`

```console
$ docker pull amazoncorretto@sha256:59ce8a227f50be919b59cdd49aecf93e446d49eeb2553f0dc38a3ed01ff3af27
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:26-alpine3.23-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:f03512db3e2612cf2ad64e29b8e0184061119e0f5fcfe2ae363c920ed396f7db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.3 MB (189339408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b8f62bff3ccc6981181e096f4705cda68c5323b6aebd05c4aadc5002ca90868`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:21:47 GMT
ARG version=26.0.2.11.1
# Thu, 20 Aug 2026 17:21:47 GMT
# ARGS: version=26.0.2.11.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-26=$version-r0 &&     rm -rf /usr/lib/jvm/java-26-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:21:47 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:21:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:21:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8479ba09ab88af419a6bb9cd5f1cfbe1fb906fb7c86dfcadf178238ae2ba1f1`  
		Last Modified: Thu, 20 Aug 2026 17:22:07 GMT  
		Size: 185.5 MB (185494987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-alpine3.23-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:1a6d055ad615dd3098133fd41ed995cdf680dbffeed7d53ff4a57108b51e51f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **595.7 KB (595691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8808c1fcfc5a6c3046d16ea7c6019ebc70d5e1137f3a4b994ce6b6964a979cfb`

```dockerfile
```

-	Layers:
	-	`sha256:c53b03cdb32e76f77f6c32aa9f5b5f9144d5fc21635ba3eb3ed89647f889b9e0`  
		Last Modified: Thu, 20 Aug 2026 17:22:03 GMT  
		Size: 586.3 KB (586319 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:959131c4bcf8e2d9f9179c291c584f9333d6f6defaed2e93626e67521d2d57ae`  
		Last Modified: Thu, 20 Aug 2026 17:22:03 GMT  
		Size: 9.4 KB (9372 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:26-alpine3.23-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:bb5c29c35507f1b5c8ffaf76c98926aa411c69b0de9a6498ddc6226cb7b33968
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.2 MB (187214139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e0010c6c3ad3b1df90a1480063eec75a3c9087f961c456578b076ddc16ff175`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:18:40 GMT
ARG version=26.0.2.11.1
# Thu, 20 Aug 2026 17:18:40 GMT
# ARGS: version=26.0.2.11.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-26=$version-r0 &&     rm -rf /usr/lib/jvm/java-26-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:18:40 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:18:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:18:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67d55434e5a65875292a246439a03074c9570f2c940d7101f18de70cca01a963`  
		Last Modified: Thu, 20 Aug 2026 17:19:01 GMT  
		Size: 183.0 MB (183032279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-alpine3.23-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:e68626f4c6d73b52c5bb4ac9974ab3c81d86ad8d539a9193b88a94328d2e3bd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **594.6 KB (594560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf5d8229553353db517a95d7bc61698994c3f2cddcd3b5cd593b623da420a105`

```dockerfile
```

-	Layers:
	-	`sha256:2d6ad1b3e3bc23cdd44814b0890be33cd31f5568992543c7af947db859ac3111`  
		Last Modified: Thu, 20 Aug 2026 17:18:57 GMT  
		Size: 585.1 KB (585085 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:765dab4638164910adb8667d047061a2cf33b2bbef7c2132b98fe457e35f9080`  
		Last Modified: Thu, 20 Aug 2026 17:18:57 GMT  
		Size: 9.5 KB (9475 bytes)  
		MIME: application/vnd.in-toto+json
