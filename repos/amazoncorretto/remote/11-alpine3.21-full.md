## `amazoncorretto:11-alpine3.21-full`

```console
$ docker pull amazoncorretto@sha256:a96837f814c8081a4ba38ed2c8fccc51aaeb78223db412bdf742a2dfbde31a11
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-alpine3.21-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:adf977ea9c3cf4bbe9a64691999252528b415087f86cd403cb9e2e164dda6ecb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.6 MB (147591478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec0cf81c5bfaaa5393a1bfec34b6f8302ededc7010b953c4cf4b91286076cf0e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:19:21 GMT
ARG version=11.0.32.10.1
# Thu, 20 Aug 2026 17:19:21 GMT
# ARGS: version=11.0.32.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:19:21 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:19:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:19:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6adb0463e5d5a17928dc7e89edca1f26129001069dc9c98b1f3d82819992ebde`  
		Last Modified: Thu, 20 Aug 2026 17:19:38 GMT  
		Size: 143.9 MB (143944603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.21-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:793802e5f7ef6d8a2ff061b0f4dbd7474631b765dcf80294f3d72f2f2f84e65e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **602.7 KB (602748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:235bfa3c602bb8dd05826fbb48076b3f02c0cfcbc5b8530d70dad3e672788f00`

```dockerfile
```

-	Layers:
	-	`sha256:4654cac95d51302f09b95449919c6897dc2514004da18b74d5c1770a07381823`  
		Last Modified: Thu, 20 Aug 2026 17:19:34 GMT  
		Size: 593.4 KB (593369 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8a0dd58a82c8941b1278fcbaa452980199edb8da6c040d9c3381889f3727a3f4`  
		Last Modified: Thu, 20 Aug 2026 17:19:34 GMT  
		Size: 9.4 KB (9379 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-alpine3.21-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:093019953c945144fc4c5c69b0adf62e173e0410775b2acc2728e3477bc71471
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.3 MB (146318986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:449887dd135cba8fe66cb43361292d77d32691dad407bbe883029eae97851944`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:13 GMT
ADD alpine-minirootfs-3.21.7-aarch64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:13 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:16:13 GMT
ARG version=11.0.32.10.1
# Thu, 20 Aug 2026 17:16:13 GMT
# ARGS: version=11.0.32.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:16:13 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:16:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:16:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:2dd7199cff98a7400e801cbfad6de906972a4e3dd0a749d4c1b80f5a1e3e4108`  
		Last Modified: Thu, 16 Apr 2026 05:32:50 GMT  
		Size: 4.0 MB (3994465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f18a8adb53715ae8cb068ea3576e09b502e038e279a40c7c2afdef6ede81659`  
		Last Modified: Thu, 20 Aug 2026 17:16:30 GMT  
		Size: 142.3 MB (142324521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.21-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:d5b96604924e7900101394b35297265a0d24411ad735fff835065782f490c239
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **602.9 KB (602907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e32658ccd516b00ef9f491b652d5861645143ad9f1ec5c237cd78a784665e11e`

```dockerfile
```

-	Layers:
	-	`sha256:10f9982657deb32a0347463e95da22ebd2acc5a773005344f6f23ad4272415f2`  
		Last Modified: Thu, 20 Aug 2026 17:16:27 GMT  
		Size: 593.4 KB (593425 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9837f292f715b5c0e64a6a5c3eaf6408984e45d9398612e74125583d90fccfd1`  
		Last Modified: Thu, 20 Aug 2026 17:16:27 GMT  
		Size: 9.5 KB (9482 bytes)  
		MIME: application/vnd.in-toto+json
