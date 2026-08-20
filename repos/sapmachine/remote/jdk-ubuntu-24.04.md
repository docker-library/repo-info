## `sapmachine:jdk-ubuntu-24.04`

```console
$ docker pull sapmachine@sha256:9dbaf88aee0573e96ba6341c2332f9265cc0626a0c1f028ea5e16f8c7f728467
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:jdk-ubuntu-24.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:95ace854fab9e67bbd0cdd953c8ae9f51ec9ce732202d9921fa2919a65b72fab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.0 MB (171005616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e13e566a4296957e0758e7096966151c1c2e91cd70042c1264da9ede4d554e30`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:28:15 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:28:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Tue, 18 Aug 2026 19:28:15 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a08345ef72449adf59ec528f124fc5ea0a2c43b7d73954982f1093286b90a201`  
		Last Modified: Tue, 18 Aug 2026 19:28:33 GMT  
		Size: 141.3 MB (141252809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:7d9d4169a3b0728a1bcbf2ef5549532843ebbf35e885d61d5f8ed9193bffb575
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2568412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84d4b9df5b5fb7cf06e7211bc1895eae84330b10947daad040a308b87675614b`

```dockerfile
```

-	Layers:
	-	`sha256:bc5cfc75943ad5e5a8a7f2b8167de6f8744b049b03706a2f8f9df76c39133392`  
		Last Modified: Tue, 18 Aug 2026 19:28:29 GMT  
		Size: 2.6 MB (2553312 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d0777b4d52eade7377db56f1d8543d47120229382c707de01cefabacd745236a`  
		Last Modified: Tue, 18 Aug 2026 19:28:29 GMT  
		Size: 15.1 KB (15100 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jdk-ubuntu-24.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:e9e78d7516cdea15d8e6154253111e1f4a441d7d04df8e7cdab7eb4259b8bb92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.2 MB (169189384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cfeeb2867a124d6ca7652ba83ea90fda4605dd7ca8cec98766d48d252ebba05`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:28:29 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:28:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Tue, 18 Aug 2026 19:28:29 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd746ffe4a60a650a9cfd6d80786fe4a17016bbc3e081a8d77a39c65fa32a7a`  
		Last Modified: Tue, 18 Aug 2026 19:28:48 GMT  
		Size: 140.3 MB (140302149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:37dd41b871dd9eb8771dde9eee7185a3b3baf93bed2f97da3ee7189f87463921
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2569461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8295c99f60b297f820ced83e52a989e75196a66f23ac9596393bc8baa84e0bf`

```dockerfile
```

-	Layers:
	-	`sha256:a65a07aa1811d4fb0af2fc099b2b5c6615e6e70b835d8285d1cacf3d827583f5`  
		Last Modified: Tue, 18 Aug 2026 19:28:45 GMT  
		Size: 2.6 MB (2554017 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13a2818a95228368920043422014793e021fdf6a413a2f7568bd208fb93fdc96`  
		Last Modified: Tue, 18 Aug 2026 19:28:45 GMT  
		Size: 15.4 KB (15444 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jdk-ubuntu-24.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:2dc340cfb209795147b06b67894305e15bc207d72f6839127afdfd17fb82abbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.7 MB (174690210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df27b32167c60ca37730d1bef5cde60216bd519d6cefe174cdedb0a3b6b495f4`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 17 Aug 2026 13:37:16 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:37:16 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:37:16 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:37:19 GMT
ADD file:2c1f3ca3b8968d5c5bcce4fb1290d9ca7224bbde9578f0051bf2d5493b3b6481 in / 
# Mon, 17 Aug 2026 13:37:20 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 22:34:32 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 22:34:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 19 Aug 2026 22:34:32 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:9ce277f493517cc144a5fc2f41269e529e99b662f089df362b22f62d1fbb7436`  
		Last Modified: Mon, 17 Aug 2026 14:27:41 GMT  
		Size: 34.3 MB (34311195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76bb3f99753799124433f82103a049b3b7a9f21053e37e30709a00614feef386`  
		Last Modified: Wed, 19 Aug 2026 22:35:06 GMT  
		Size: 140.4 MB (140379015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:2ed0f09ff26ed8c6bbbc1486e866e3e12272455b9f8dca482cf51b328b944e92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2567540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68927c8752dd05675519315b7395d049bd798f27b71337d9e54de1d761f1168f`

```dockerfile
```

-	Layers:
	-	`sha256:791adf82d28d91cd3514f8a3307a957d205557ad3cff619764374a52d7b266d9`  
		Last Modified: Wed, 19 Aug 2026 22:35:03 GMT  
		Size: 2.6 MB (2552276 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4bc061dd51dad0e0a77afdee1cd2141436667c9bf5f37dc50e8de324e740f36f`  
		Last Modified: Wed, 19 Aug 2026 22:35:02 GMT  
		Size: 15.3 KB (15264 bytes)  
		MIME: application/vnd.in-toto+json
