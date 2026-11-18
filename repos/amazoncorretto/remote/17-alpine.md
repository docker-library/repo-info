## `amazoncorretto:17-alpine`

```console
$ docker pull amazoncorretto@sha256:45f029c659c0205534dee537231ba394daaea0b14ecbad59b55af9135a2c5211
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-alpine` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:ebfc9f8f261f75adfb31c4d24446d1b3bdf7ee991d88cf5cb3e9fda8d55cb0de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.1 MB (153083452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcb83dd6553a828e3b6056eada289351f18adfdc3a3106805f628c8ac070ad53`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Tue, 17 Nov 2026 21:33:44 GMT
ARG version=17.0.21.1.2
# Tue, 17 Nov 2026 21:33:44 GMT
# ARGS: version=17.0.21.1.2
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Tue, 17 Nov 2026 21:33:44 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:33:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 17 Nov 2026 21:33:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b95797276e73e66fcdff0ab1985c8374722b08b89a5100061ceacca9ac117467`  
		Last Modified: Tue, 17 Nov 2026 21:34:00 GMT  
		Size: 149.2 MB (149229779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:450942da93ea0ba857779cb50febac5866623a4003863866e5102f612cbb0615
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **594.6 KB (594566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9882f169c72735b52ec9e78971441569a0b46b6370a99c3cbd3c6e2f3c978e6`

```dockerfile
```

-	Layers:
	-	`sha256:eaa83ba093883b914d76fa51799e994b70f77e469c7212a3822cbca40ff1ae10`  
		Last Modified: Tue, 17 Nov 2026 21:33:57 GMT  
		Size: 583.9 KB (583884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e1f40d146812f69af0d324c6fcc51e133b01c204a3ff38b857d3f8deb77835dc`  
		Last Modified: Tue, 17 Nov 2026 21:33:57 GMT  
		Size: 10.7 KB (10682 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-alpine` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:a54c4c1cf0818d11af6391b63c464d3c907cb6a51601bbd37190f321235f9506
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.9 MB (151906334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0d01fdc1e544c798e0388dd426642918e5a1dd8d73d94f2e8a62d23d08ff256`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Tue, 17 Nov 2026 21:33:45 GMT
ARG version=17.0.21.1.2
# Tue, 17 Nov 2026 21:33:45 GMT
# ARGS: version=17.0.21.1.2
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Tue, 17 Nov 2026 21:33:45 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:33:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 17 Nov 2026 21:33:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7442f375da949080f7de01e62281119d6d722d528c0874e3815bdbf11cc206f`  
		Last Modified: Tue, 17 Nov 2026 21:34:03 GMT  
		Size: 147.7 MB (147715739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:404ae5197f85bae8a1ddae7fb05b48eaf572ff8f3f821e496f2ac359d7862ed6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **593.5 KB (593534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8966de0b20caa0cfd385ae99ce6805f0e59b6af2e9252ee748524c6d34599b3`

```dockerfile
```

-	Layers:
	-	`sha256:6b9288485e8cd6006610040dbb05a16943e099856ce8f1ab41526448a617a923`  
		Last Modified: Tue, 17 Nov 2026 21:33:59 GMT  
		Size: 582.7 KB (582701 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81c49d8fc0019183a992b64ab2f3974842b0c7b02886bcc4d30fab38932ec99c`  
		Last Modified: Tue, 17 Nov 2026 21:33:59 GMT  
		Size: 10.8 KB (10833 bytes)  
		MIME: application/vnd.in-toto+json
