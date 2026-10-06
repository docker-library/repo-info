## `clojure:temurin-21-tools-deps`

```console
$ docker pull clojure@sha256:89c9f5d6ce65413228873a7655fab0e64b972ddcb97599b9027c8c8e19015841
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-tools-deps` - linux; amd64

```console
$ docker pull clojure@sha256:61c55d01c16cf9872b209d0d102944fb53bb0b569067c006a28f1486b559b0e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.9 MB (286923672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30f8aa26d3fbe93fefc291452ac216463c7b37811069e175fa81c2ed9c571267`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:12:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:12:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:12:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:12:55 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:12:55 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:13:11 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:13:11 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:13:11 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 02:13:11 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 02:13:11 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:8cb71386cfcfc55b27b559f73c6d5c0cdcb93b83be8281314116e271cc42cea6`  
		Last Modified: Tue, 06 Oct 2026 00:12:58 GMT  
		Size: 48.5 MB (48518022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c6c891f1656c7ea19f19e7d8a0efca74fc6818709ed9ec5d4ac36fc173c5480`  
		Last Modified: Tue, 06 Oct 2026 02:13:35 GMT  
		Size: 158.1 MB (158117473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03d3f146137b429dec580e82ab8ecd8357ba743e2f8e34fb364b91eb7f9368a0`  
		Last Modified: Tue, 06 Oct 2026 02:13:33 GMT  
		Size: 80.3 MB (80287137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d503ee0883f5acaee7da593d5db42903d429a9c7d76c486ce49ab519b85cba14`  
		Last Modified: Tue, 06 Oct 2026 02:13:29 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ff79022f00b47d02bb90d5327e9b94b9acee020bb0ebe75f3f0212bbb6232b9`  
		Last Modified: Tue, 06 Oct 2026 02:13:29 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps` - unknown; unknown

```console
$ docker pull clojure@sha256:9df71d1a5c1aff1a215898ebcd262e6b4b6530f3bc743d974d4194624d24720b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7399791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2301b57270e63567132f7c3ced435e4a0e5d75a4ea83e8586b7bfaab2541c29e`

```dockerfile
```

-	Layers:
	-	`sha256:f506622c4bad9fc5e4fb99574a0dbe2e20c89db4d116d4b01342e565727b7045`  
		Last Modified: Tue, 06 Oct 2026 02:13:30 GMT  
		Size: 7.4 MB (7383176 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d18872c2e8ca26dbfc5fb72221c4093398228bee9ac23016e2f06dfd25d4fe5f`  
		Last Modified: Tue, 06 Oct 2026 02:13:29 GMT  
		Size: 16.6 KB (16615 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4c5934905f7ecd468f9143b05486143279d965e6bc90c7eaf2c0e64b2578fdc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.0 MB (285035112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c82e4387cbea3013172b0c3f987620d836feb7c89799ed05743e99c881f17ca`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:18:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:18:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:18:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:18:55 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:18:55 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:19:12 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:19:12 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:19:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 02:19:12 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 02:19:12 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2a02c40189e361a19e7cb07374fe9925f5c4f7db254ae2b9196348c27c286b03`  
		Last Modified: Tue, 06 Oct 2026 00:12:46 GMT  
		Size: 48.4 MB (48401555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4306f4f9e913e1b8319ccfea57bb3f6505942c8fa0f25edd35caf95bc2889ec2`  
		Last Modified: Tue, 06 Oct 2026 02:19:37 GMT  
		Size: 156.4 MB (156400671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c5f53dbef513b76eb9ab932156479ff677d17fc15def6bb08428a11741b2de0`  
		Last Modified: Tue, 06 Oct 2026 02:19:36 GMT  
		Size: 80.2 MB (80231851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d9e011d511c6ef4077fd0e44d440bdfd5eb66f1719d6565e30af6d0399610d3`  
		Last Modified: Tue, 06 Oct 2026 02:19:32 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:263da9e11b566137ce249ed987cc5ee5121bb798fa966f5959678099d3b38ad0`  
		Last Modified: Tue, 06 Oct 2026 02:19:32 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps` - unknown; unknown

```console
$ docker pull clojure@sha256:24200928673b9f973b39178b98bcd95b8b9ad2648f604611d14fc69ef3486ae9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7405721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e03ccefa20a4a980b1fbaa5822a8ab8c0b56304964ff7a584f5bad41b34349c8`

```dockerfile
```

-	Layers:
	-	`sha256:c3e4e7ee4b38b61ef2dc281ffc23b7bf1b58373119349a753e5df5fdb4196fde`  
		Last Modified: Tue, 06 Oct 2026 02:19:33 GMT  
		Size: 7.4 MB (7388963 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ed33b1b1f8ab040abc39ecc5c08ac42b94061b0a1a7b5afd45f74a716d5d804`  
		Last Modified: Tue, 06 Oct 2026 02:19:32 GMT  
		Size: 16.8 KB (16758 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps` - linux; ppc64le

```console
$ docker pull clojure@sha256:fa1bc9d1b1833668a2362ddca1e5094e4b16ba96cc556bdda86b313102bf80f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.9 MB (296908094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1b4d4d1a2fafc474a09154320d2bc88eb694af04d0667e3c1b600757cba4901`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 10:17:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 10:17:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 10:17:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 10:17:41 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 10:17:42 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 10:29:12 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 10:29:14 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 10:29:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 10:29:15 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 10:29:15 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:58cab6801365446bc48a7346cc006c3b6212080a71cffab9057f5537e165cff1`  
		Last Modified: Tue, 06 Oct 2026 00:12:12 GMT  
		Size: 52.4 MB (52362739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39eb49c79f6fd358bbb7683a7bb423a82f3f838344c42ac4fa4d3d7452e500e4`  
		Last Modified: Tue, 06 Oct 2026 10:22:16 GMT  
		Size: 158.3 MB (158282647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48b2f64a97d1c34faa7a43ee21f2d89bc28d1b08888c3133fc375df2ce0e4dc9`  
		Last Modified: Tue, 06 Oct 2026 10:30:17 GMT  
		Size: 86.3 MB (86261666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fafac7de767c0eef14fba476a39e5085853a55ce8eb9cc50016ee75cc545f9f5`  
		Last Modified: Tue, 06 Oct 2026 10:30:14 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d308efe367ed2f027d3157af211670e64692d55aa6bf97fb248dc2826747e9f8`  
		Last Modified: Tue, 06 Oct 2026 10:30:14 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps` - unknown; unknown

```console
$ docker pull clojure@sha256:aecfd5f7f2f9080900cf689a584a2e2552543f9f34d29a5992328fe955e9bd28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7405078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db7521c573b017ca12128231e9a94ee4824e0c090ba4610667a1943fdc9c4d45`

```dockerfile
```

-	Layers:
	-	`sha256:1a91bec27d8813980dd351ae6c9145994ac0c0083e5a288ac47c0a53b4db6499`  
		Last Modified: Tue, 06 Oct 2026 10:30:14 GMT  
		Size: 7.4 MB (7388402 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:41aa716b3ecbfff5cbe672da6b2f451fc83c566fd3e894956538e728d44b1ce8`  
		Last Modified: Tue, 06 Oct 2026 10:30:14 GMT  
		Size: 16.7 KB (16676 bytes)  
		MIME: application/vnd.in-toto+json
