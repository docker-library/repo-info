## `clojure:temurin-11-tools-deps-1.12.6.1673-trixie`

```console
$ docker pull clojure@sha256:40d01afb51dc1d6b7cb38d531fef92eae94ebc8ed762ff613fa52ac40e596c81
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:744a63cc0198280e4bbb3c9a980f2752fd24ab71be55416a58ced3a7948a5f41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.3 MB (281270303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c5dfca646955eef3bf9a7777756e2b11c786743fd539c3ff477d15684e34eda`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:01:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:01:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:01:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:01:50 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:01:50 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:02:07 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:02:07 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:02:07 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7441950a214faf9a3e6598ca41ac4ff8cd6930ae21c2d059732790963026cbf`  
		Last Modified: Fri, 04 Sep 2026 00:02:28 GMT  
		Size: 145.9 MB (145861363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fcd62aa3afd3a461a952249ad8006fce12145cdf7103a2de481fce8e438d766`  
		Last Modified: Fri, 04 Sep 2026 00:02:29 GMT  
		Size: 86.1 MB (86070465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91b1a5d4e1b16a7710bfcf5f2eaf89206b64d92ea5d64cecdfcab08edc4a1477`  
		Last Modified: Fri, 04 Sep 2026 00:02:25 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:7be272f5588b338a3b4845cda5dc1a8111749dfd79da3dbdbcc17d835b58c678
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7507724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c350eaa6e9d6f52509bebbb5c55977ee5dc1be43fcd473709786e9d35de1663`

```dockerfile
```

-	Layers:
	-	`sha256:16beb34ade4e180130494b378a62e126fac649efb869b25b30de7797e40fa0a8`  
		Last Modified: Fri, 04 Sep 2026 00:02:26 GMT  
		Size: 7.5 MB (7493385 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa9d7c966bd6da92d808612829cef61ba0f378ca47c333ef7285f82465aee781`  
		Last Modified: Fri, 04 Sep 2026 00:02:25 GMT  
		Size: 14.3 KB (14339 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:370df0e7632b0a9dc8be682cfdec26cf1bda67c4cc65ca015d1b7df314a5cdf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.5 MB (278539667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2b337b7114b798e70ff87c64146c5fec82c6d3c63e627b11b7afd8777750a56`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:06:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:06:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:06:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:06:11 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:06:11 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:06:30 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:06:30 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:06:30 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae511c74dcd60fdffcb8f75f2f93268de41524a83ddb34517a0a7e0263b1a96d`  
		Last Modified: Fri, 04 Sep 2026 00:06:53 GMT  
		Size: 142.6 MB (142566567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f23b646ce41cca0114daa18dd829c100fb627f882c1403c77deff2b8c54f26c`  
		Last Modified: Fri, 04 Sep 2026 00:06:52 GMT  
		Size: 86.3 MB (86267604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bd763115c26c30e60e6a44a0af7473c638723a88100830c9849d515a8cd93cd`  
		Last Modified: Fri, 04 Sep 2026 00:06:49 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:bfd69b623e69fc80cf3d1dfe5d97bbf2c46b4a3500ec37737344c63e91a64369
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7514853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e84bcbe8531ac06efd9c2cc9805702626a4fcdfb11b2b97590671a3817c16b2`

```dockerfile
```

-	Layers:
	-	`sha256:25e1cee5d01e3aecbafb7e6e07473855d440a1b27aa61f4bd8706f7b909bd112`  
		Last Modified: Fri, 04 Sep 2026 00:06:49 GMT  
		Size: 7.5 MB (7500396 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:57b60aed73968245abdc0411be8ce7f4b3d9b5f3c3c0a0779168468de43045fa`  
		Last Modified: Fri, 04 Sep 2026 00:06:49 GMT  
		Size: 14.5 KB (14457 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:656d71a9c521c4e4e962d40348b781dc2bf9b8c4c69932b1546c8c26fc0c6eb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (277971160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21b7df43fa62c49da5ba6043324d5c76438ac1df93293f008a0c775b80df3221`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:12:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:12:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:12:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:12:53 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:12:54 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:13:56 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:13:57 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:13:57 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c9faef28645770c6fe72c4551b8259baa09e37944ea26162e500ada57df65c1`  
		Last Modified: Fri, 04 Sep 2026 00:14:50 GMT  
		Size: 133.1 MB (133089928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37655c28a8d5415790f1336b11d13a223e4350898b0504340455ff58342f8f59`  
		Last Modified: Fri, 04 Sep 2026 00:14:50 GMT  
		Size: 91.7 MB (91716304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f668eecbc70173ed5408eb0afebe1e39b01d73a80227ad9ada0c4a99f9647e7`  
		Last Modified: Fri, 04 Sep 2026 00:14:46 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:007c65058bd09da22dd676488fcda4af6b3db0dd65a07da84640aa68f531aa3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7511578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0e9062635b8e1d8213e5d30c888b8c0950ce4600cf3fb60c3894158e5994ea7`

```dockerfile
```

-	Layers:
	-	`sha256:366eeb413e6c7afacb8eb74050794f2d09771570bce782448208e42756cbd804`  
		Last Modified: Fri, 04 Sep 2026 00:14:46 GMT  
		Size: 7.5 MB (7497191 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9db9be4d9879e42b44b731929396be18d818631b39472e99d9333e18aa76f28`  
		Last Modified: Fri, 04 Sep 2026 00:14:45 GMT  
		Size: 14.4 KB (14387 bytes)  
		MIME: application/vnd.in-toto+json
