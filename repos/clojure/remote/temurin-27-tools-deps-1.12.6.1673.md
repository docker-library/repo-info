## `clojure:temurin-27-tools-deps-1.12.6.1673`

```console
$ docker pull clojure@sha256:1910ed0b7687551f0f5f1dc118855bcf98ec5c9940dcfb9345291d81ad01af16
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-tools-deps-1.12.6.1673` - linux; amd64

```console
$ docker pull clojure@sha256:7b680dee5eb6057cec895efa9982187951d29560f11c953e33e4e6a8f766bc43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.1 MB (220145808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c29b11361c4ae0d83f6f16d9f33d1eda7ab5fae51e25d671e6fea1d58c4717e2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:22:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:22:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:22:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:22:29 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:22:29 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:22:43 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:22:43 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:22:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:22:43 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:22:43 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89da2f45e093db67bcf560be66319a42382d2796889b0bacfc8ff40a38e1f2b4`  
		Last Modified: Wed, 21 Oct 2026 01:23:06 GMT  
		Size: 93.6 MB (93622452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ca703aee11647807457416e08c3bd2e3c35d5baf8e3293f4b910e014182c90e`  
		Last Modified: Wed, 21 Oct 2026 01:23:05 GMT  
		Size: 78.0 MB (78000227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3e2111cf7ee0349b70c832afb020856a767d113d808729b9c0f18a42c0f2f95`  
		Last Modified: Wed, 21 Oct 2026 01:23:02 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6db70352c6c299ecfbe26cb70ceb4adabcd04a28ddd0fdb0ab40209b56bf0da`  
		Last Modified: Wed, 21 Oct 2026 01:23:02 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-1.12.6.1673` - unknown; unknown

```console
$ docker pull clojure@sha256:e5737092f4b57d091526f84cbf00b4458ffd6ae87dd0f6f4352538ad4087359c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7360262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea870e20257954608027b2363ce2cf9f0c191f32a7e3585f696497042ad8199f`

```dockerfile
```

-	Layers:
	-	`sha256:5c200a628e3728b59bcf2702870f3b64cec09a1cd7f785931177cfb4011f0c49`  
		Last Modified: Wed, 21 Oct 2026 01:23:02 GMT  
		Size: 7.3 MB (7343653 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2d600ddd3e9a1b42b5acae9dd5ca2b87b07fb894da2ba230e2efc0dbfb1658a4`  
		Last Modified: Wed, 21 Oct 2026 01:23:02 GMT  
		Size: 16.6 KB (16609 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-1.12.6.1673` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:09fc978903970a1f9d34a06594b7c5fc786f23d43ee737a2bcfdfeee1831f81f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219021315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b747ba835db9229163027330c81b5cdbe8abdc7f0b57c2d0b821742e882fcc64`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:28:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:28:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:28:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:28:44 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:28:44 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:28:59 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:28:59 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:28:59 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:28:59 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:28:59 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a97cb698362f4b23d085b953f3106766a2137816fe5e17a99fdc3e48bd37e810`  
		Last Modified: Tue, 20 Oct 2026 23:29:54 GMT  
		Size: 48.4 MB (48403111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c72e967389c5b3625f9ceff663a5cde8e30fa24e6fbf9f74a295d075bdb80ed`  
		Last Modified: Wed, 21 Oct 2026 01:29:23 GMT  
		Size: 92.6 MB (92633100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:983fb2f65ce1efbc6faff168cf7de781a22931c6bf67c493397bab981a7ff056`  
		Last Modified: Wed, 21 Oct 2026 01:29:22 GMT  
		Size: 78.0 MB (77984059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c097e54576841e780717c496b2d69915e096d55b12167002f09a8ed6a8abe49`  
		Last Modified: Wed, 21 Oct 2026 01:29:19 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:748d538db780842ccd3f48492966a43508fef1a0f7b7e75b94bdce3941fa4c26`  
		Last Modified: Wed, 21 Oct 2026 01:29:19 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-1.12.6.1673` - unknown; unknown

```console
$ docker pull clojure@sha256:586dba869e839d53b41b5d7b1150896a4c9d6275e0309ad22c5ef35ee201bd73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7366188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cbbf07248ce7b18969d40be68540847dc6ac690b617a34560bf602d782a326c`

```dockerfile
```

-	Layers:
	-	`sha256:2c3d97c58cc878b290371126319981694293ab3acef77a9fc9b5f7cbc1cde947`  
		Last Modified: Wed, 21 Oct 2026 01:29:19 GMT  
		Size: 7.3 MB (7349437 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:917ec18ddcf8ec49302e0fe8b26f891a8879fe264d5fbd2d165cc29a0800c514`  
		Last Modified: Wed, 21 Oct 2026 01:29:19 GMT  
		Size: 16.8 KB (16751 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-1.12.6.1673` - linux; ppc64le

```console
$ docker pull clojure@sha256:9e170d5b6dd45b7be73fc553e66f4af8f3996b7ab998a62a0e488d6b595fee04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.9 MB (230910783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45ccb2abfd7dd1079451087f1b4cd149de8149d07256385b7663ad5a35ebec19`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Mon, 12 Oct 2026 18:17:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 12 Oct 2026 18:17:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 12 Oct 2026 18:17:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 18:17:58 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Mon, 12 Oct 2026 18:17:59 GMT
WORKDIR /tmp
# Mon, 12 Oct 2026 18:31:20 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Mon, 12 Oct 2026 18:31:20 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Mon, 12 Oct 2026 18:31:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Mon, 12 Oct 2026 18:31:21 GMT
ENTRYPOINT ["entrypoint"]
# Mon, 12 Oct 2026 18:31:21 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:58cab6801365446bc48a7346cc006c3b6212080a71cffab9057f5537e165cff1`  
		Last Modified: Tue, 06 Oct 2026 00:12:12 GMT  
		Size: 52.4 MB (52362739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02c35d2189bfffaa47d970581dc56eca0931336fc01963dc24bcb1872321d3f0`  
		Last Modified: Mon, 12 Oct 2026 18:22:20 GMT  
		Size: 92.3 MB (92255804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f18d9ff8ecf1e7559763ac30dcd8e8fb65afd1baa7f875e51fab0aa5e68ba07`  
		Last Modified: Mon, 12 Oct 2026 18:32:02 GMT  
		Size: 86.3 MB (86291197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be6121070ac6f0726a6654d36003bb92feac83720804cd876c444a8cbb58872e`  
		Last Modified: Mon, 12 Oct 2026 18:31:59 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1af523e2df53fa0b4d6c1695fac804235c1c842d7f7a50f4e0725e56029f9a0b`  
		Last Modified: Mon, 12 Oct 2026 18:32:00 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-1.12.6.1673` - unknown; unknown

```console
$ docker pull clojure@sha256:1806cc0d52f4d720c5e1b26680b5fff6081bf2fae3ba2bffb8cfb8c5720d60aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7350779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:951de8136d6c1928b10ddd1428be689c42258d70094b4973c7aca94200545ba2`

```dockerfile
```

-	Layers:
	-	`sha256:ec645cabdf09580c4b9f122025ee2a828ea5e3effe859a83ea05062b794322b9`  
		Last Modified: Sat, 17 Oct 2026 06:55:19 GMT  
		Size: 7.3 MB (7334110 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c0190af8d69cae16d5217e2f80a861fd78c5d4b0fc315f5a70cdc9b13b4d9db9`  
		Last Modified: Sat, 17 Oct 2026 06:55:18 GMT  
		Size: 16.7 KB (16669 bytes)  
		MIME: application/vnd.in-toto+json
