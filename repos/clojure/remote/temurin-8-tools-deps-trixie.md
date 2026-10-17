## `clojure:temurin-8-tools-deps-trixie`

```console
$ docker pull clojure@sha256:4d911ddcb677cc8d7201b558b77a4b7638177e3171bdc6a67656592b2be0246d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:b1bfea399a25b4185f91191e9dd44e5c49900d69735859addef165a663fbb949
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.2 MB (187163078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5003e22204739c7375c68f035ba13edcc8a298307e3e9c6de0c5e516f5eca3c4`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:46:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:46:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:46:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:46:15 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:46:15 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:46:33 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:46:33 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:46:33 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:4846f29007305297af653c57bf9b60ba8f676a38695c68d98460063442581671`  
		Last Modified: Tue, 06 Oct 2026 00:14:13 GMT  
		Size: 49.4 MB (49393200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:593ec3fd9d4d797dbc5f45239ed39f540697fc1fde48a81a3d6b5df05e270ba8`  
		Last Modified: Sat, 17 Oct 2026 01:46:53 GMT  
		Size: 55.2 MB (55192278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e617fc86903e64c5e5ef5cb1d44ceb0c27d86c8671c0fd95457d6709a621f539`  
		Last Modified: Sat, 17 Oct 2026 01:46:53 GMT  
		Size: 82.6 MB (82576954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4b1dddec542b673209f1f0a1cb6135118b3bf3890d537c6a1f8c6dea57d874b`  
		Last Modified: Sat, 17 Oct 2026 01:46:50 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:ffd225a642807d7ac4dd8b83a237c0df910c1148022491f012760ccd1001046b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7613498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ec168771d1d58bd28b56afaf2538c1110293251f39a7e382e245b679386fccb`

```dockerfile
```

-	Layers:
	-	`sha256:ce5d7a51461742ff37a04adf66ed92303564d1f3b6724ace05e99a17e5ba89b8`  
		Last Modified: Sat, 17 Oct 2026 01:46:51 GMT  
		Size: 7.6 MB (7599174 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9956bee15e13800d91bb090c8013ddbc8cc45be7ab3b6df6e67d19bc5fec2b64`  
		Last Modified: Sat, 17 Oct 2026 01:46:50 GMT  
		Size: 14.3 KB (14324 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:0df69c9ad8a0ce70b7942d4ffe827bcd1a8cf37d136dc2727a8f6767cfd849d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.4 MB (186412125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd83d1683122e5892eed587ef73b8d6914b3e9610646e446d1fd579405cea34b`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:46:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:46:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:46:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:46:28 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:46:28 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:46:48 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:46:48 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:46:48 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:df9831efb49cab24dec437e8482f2a9ddbd9e239131fa3ffe095dc1492081e1d`  
		Last Modified: Tue, 06 Oct 2026 00:13:30 GMT  
		Size: 49.8 MB (49761105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd2824364bd63e837299523041ae87fbf52033a0ce1aebd0af2037ac244a4931`  
		Last Modified: Sat, 17 Oct 2026 01:47:09 GMT  
		Size: 54.3 MB (54254297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23093a53933f3792010c606e5cfb53d580114fd69bf0e429bab5745b0527336d`  
		Last Modified: Sat, 17 Oct 2026 01:47:09 GMT  
		Size: 82.4 MB (82396079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:239a735aec1c95a6f604d388d0ab6fb7d863b42310cccc4f6dd618a1f1c190cf`  
		Last Modified: Sat, 17 Oct 2026 01:47:06 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:995828a8a0b6c8221acfe02c452d381e1d454afde284c9c4f3f5dc94ea448ae7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7620709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:283e48bf39f33940bced991a79a335000c0f73e75fb7c3e64cb277ac9b8d6c36`

```dockerfile
```

-	Layers:
	-	`sha256:e234ae962d5eff0d6571365694bd83de704f1e14d907dd91d1c7c28a3ca1fa1f`  
		Last Modified: Sat, 17 Oct 2026 01:47:07 GMT  
		Size: 7.6 MB (7606267 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7056d3a62d13fa576a3291de50e595ecc30a0b55642400227f2f8cba87caa6ee`  
		Last Modified: Sat, 17 Oct 2026 01:47:06 GMT  
		Size: 14.4 KB (14442 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:c735c3569a61433e7458047d48e3aba04f5a19b0407929c882fb368ce8c88601
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.9 MB (193864189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:693a31b1f54528880d4a1d4afb71dce585c498ded6d4dc728f5005ed8255f556`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 09:42:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 09:42:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 09:42:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:42:59 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 09:43:00 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 09:43:59 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 09:43:59 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 09:43:59 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:1216778738c2d0f00bc38a90447aff403e59888e07d78e8b1c4f2dde2aa2eded`  
		Last Modified: Tue, 06 Oct 2026 00:16:25 GMT  
		Size: 53.2 MB (53207124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9acb871f47cd1e60103f8493a16b0090a8e8ac294ad39a98c20abd640b184f5`  
		Last Modified: Tue, 06 Oct 2026 09:44:48 GMT  
		Size: 52.7 MB (52667105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33183749f2add50a6bd3ba9e95a20859e1b4ee94f90aeca3e2d5ac07b394a4fe`  
		Last Modified: Tue, 06 Oct 2026 09:44:49 GMT  
		Size: 88.0 MB (87989314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a764fcfa0f938b6449f76d4a281ad04c159a9bd40ba88ea78ec0a6be3088e816`  
		Last Modified: Tue, 06 Oct 2026 09:44:45 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:f1754d3b53d110b184222bd62379d9bf0ebcce58685b1b9be8ef753adee0b097
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7618558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78a51834b8056de03817fe06e567f3154e6e420d6a2e5e21c748224cc1ddc804`

```dockerfile
```

-	Layers:
	-	`sha256:c1e6363e8096d1d4854f1209be0f561a64cda748646e9e23e77005549f5c683c`  
		Last Modified: Tue, 06 Oct 2026 09:44:46 GMT  
		Size: 7.6 MB (7604188 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8150bea9399409bfd20fa510b57cc044af3d25423bfa3bd7ebb9c13e5f73ad9f`  
		Last Modified: Tue, 06 Oct 2026 09:44:45 GMT  
		Size: 14.4 KB (14370 bytes)  
		MIME: application/vnd.in-toto+json
