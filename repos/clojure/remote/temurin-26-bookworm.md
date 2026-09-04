## `clojure:temurin-26-bookworm`

```console
$ docker pull clojure@sha256:1f9ae939892920313098944444388ce4b3b572474a1a0d10897522acbf776f83
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:476cbbe33ced8cc71a69bd36697bb392709367e7b9d13b7608d601b1a253c611
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.2 MB (221232610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba542c996e05f6a10bffbb7048c56be4c990a2fd4264621582ba50f9680679fe`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:04:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:04:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:04:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:04:12 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:04:12 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:04:26 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:04:26 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:04:26 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:04:26 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:04:26 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2702039a844ca14268ce62f5b64da32510315a21f8ceec6fd1035a8aa14cc9d2`  
		Last Modified: Fri, 04 Sep 2026 00:04:48 GMT  
		Size: 94.6 MB (94563722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd549bbddb01cef11be14e9940b0dacc850aa38b075ff8f02bc25c774b3f81ab`  
		Last Modified: Fri, 04 Sep 2026 00:04:48 GMT  
		Size: 78.2 MB (78170482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:062ea7c0d4ef00c480ccd08d2b3f41d4767e1e4d1c3a95a9d0c7cf181fb469a3`  
		Last Modified: Fri, 04 Sep 2026 00:04:45 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c9846e0f4f48bed06ff1ffdcdb47f0ec1514731f8a00b3f87097b2b99c2edb7`  
		Last Modified: Fri, 04 Sep 2026 00:04:45 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:04aa7dd6f66024ee17380386944da30e33e33a181a17751ed37004e99dfadbf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7363559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04d58fe53d4798ea7a76523edf55464c74d0f4cf7d07dc2dbb022b63a088345a`

```dockerfile
```

-	Layers:
	-	`sha256:2d0d393a741653d82cbb2d1213abb97510bba4bafe42e805b0b74a21c4ae111c`  
		Last Modified: Fri, 04 Sep 2026 00:04:45 GMT  
		Size: 7.3 MB (7346950 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e206d28b875ca39a088007f4f76e98f59a613dbfe61e6579940ccefe9583d6e`  
		Last Modified: Fri, 04 Sep 2026 00:04:45 GMT  
		Size: 16.6 KB (16609 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:cb731203c39da47c4545fea965ff68dbd6f99eff1dea4071db3a29f918654198
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.1 MB (220096550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fc74a49db9aca7508b7da34b9adc46ac0816b0515c65f4d989abe5f90d5b26d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:08:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:08:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:08:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:08:26 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:08:26 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:08:41 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:08:41 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:08:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:08:41 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:08:41 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0823015b2799feb5d7d6d7dbf8dcbe5c3d2c178d1eefae3456ebb565f25f123`  
		Last Modified: Fri, 04 Sep 2026 00:09:04 GMT  
		Size: 93.5 MB (93541551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79f25b736c7e81f8831c8c5529509dc016230fbb4429e983928f33f3fa37c5c8`  
		Last Modified: Fri, 04 Sep 2026 00:09:03 GMT  
		Size: 78.2 MB (78170304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a59c0faf6fb687950cdfac4931194ddebabee71bf6fb95d9b87f4cfdc7a44218`  
		Last Modified: Fri, 04 Sep 2026 00:09:00 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6261c554b209428df4115a9aa8d3044ddf91fecd6158aad2c035808fc4de3fb2`  
		Last Modified: Fri, 04 Sep 2026 00:09:00 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:b821e4c5901ec55c7132776f8cae2594accbf1506eb08712ab482b2a70468f7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7369484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7a5b6eeb618a5394f584a0dd1db0b24de339d27143d7f2634919061d438a7e1`

```dockerfile
```

-	Layers:
	-	`sha256:0f89bb6847e69ca0bdefbf25a0de61f668b3a5209503095e67b667c160eff783`  
		Last Modified: Fri, 04 Sep 2026 00:09:00 GMT  
		Size: 7.4 MB (7352734 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f67576e60ec05965a26eddd4772c1319e26945bd188bd58b6a3d9ab15b804c8b`  
		Last Modified: Fri, 04 Sep 2026 00:09:00 GMT  
		Size: 16.8 KB (16750 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:0e2d9963ad7a77c47cd403f5fa5c57117d2ace2544d6053de06eec0b596206db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229677928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c9c1e3d14d82e04fee35447b1062eff052cadc18ecadf5203a41bccd955a837`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:30:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:30:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:30:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:30:39 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:30:39 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:31:26 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:31:27 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:31:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:31:28 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:31:28 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4cd70023d17c961e89077d0123ff0b5246b3abdec0a67aadfaabca3e61d0f713`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 52.3 MB (52341764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b5c0ba1d980dee6b8e75fb7cb4f75335f2fe42a232754ee7c0ef5fd543814a`  
		Last Modified: Fri, 04 Sep 2026 00:32:12 GMT  
		Size: 93.4 MB (93350784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0569b5205f3e3b2b4186620a3cafd4ea8f09391a7b1cc80d0b3df1314973520d`  
		Last Modified: Fri, 04 Sep 2026 00:32:12 GMT  
		Size: 84.0 MB (83984337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3fb5b52965899a879dc28df140549ed0a4099d5d51ba2600698afbf4ce07cf6`  
		Last Modified: Fri, 04 Sep 2026 00:32:08 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ae5655c99611b6954fbc21ff7ed7fb8d4354f77a454efca838a1cd19729b6ef`  
		Last Modified: Fri, 04 Sep 2026 00:32:08 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:1369a17730149d450a5b9f7ba5635b29521893739f9adaf360d9f48cf153ddd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7352783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5cd1b5f2d8b59e8c798b69457283dbb660ec7e400d6dbfdd2281b2054eb0eb7`

```dockerfile
```

-	Layers:
	-	`sha256:bfe67b5eac1f7c28d4c3c45993415ddca42daf3f39758435cca94867b861e4c4`  
		Last Modified: Fri, 04 Sep 2026 00:32:08 GMT  
		Size: 7.3 MB (7336114 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f5f13fadb43bc72db80a632597bb954bad82bb4fac3c3e44703ab07d377a3cf5`  
		Last Modified: Fri, 04 Sep 2026 00:32:08 GMT  
		Size: 16.7 KB (16669 bytes)  
		MIME: application/vnd.in-toto+json
