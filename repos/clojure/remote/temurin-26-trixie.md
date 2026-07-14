## `clojure:temurin-26-trixie`

```console
$ docker pull clojure@sha256:d66765623c271534e8fef4a6cc90acef2fa81fed143a017b92ecabdbb7627e80
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:temurin-26-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:c438ee69633717ba9075ceea61b285d984d88fadcdfd21a1294ba8fdd4c59571
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.4 MB (226371757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c56da2ced1f8e9cdab67530f240add484046f415615026dbc93bd8b814d9d471`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:24:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:24:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:24:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:24:07 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:24:07 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:24:23 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:24:23 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:24:23 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:24:23 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:24:23 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f958938b5ae7f75cbb4a55453c5890471a95870ca2e0a0acb6fd4a5b93d6fb5`  
		Last Modified: Tue, 14 Jul 2026 02:24:48 GMT  
		Size: 94.5 MB (94524305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:320e75b7975ce1e012b694b9bd95b5f8dcc79bfebfa289fe26ce5c403db733fa`  
		Last Modified: Tue, 14 Jul 2026 02:24:48 GMT  
		Size: 82.5 MB (82533839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a97b480f21a90f10a2341479d128160364a15a46c556d48487c0b77418763ac4`  
		Last Modified: Tue, 14 Jul 2026 02:24:45 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b55ca9eeec0a7e1520c14bb026e1cffccbec3f2f2c4cbbc7019d8c41ddb6c99a`  
		Last Modified: Tue, 14 Jul 2026 02:24:45 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:dd599c3e631858f5a612f8ad3f1b101060afbae606c4a405d7b70ba733023888
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7449653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b7b3652748f72a145063954d44aa545fedf169ddd2ceefab8e03b5cf16f5d54`

```dockerfile
```

-	Layers:
	-	`sha256:8b40df43aa692a1e3cbd4eeb0a3e0af955996d87e43595a61c67e56ad29245db`  
		Last Modified: Tue, 14 Jul 2026 02:24:45 GMT  
		Size: 7.4 MB (7433752 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4571d34dc374092c4b4438a525feb32c618d8abd542488223bd6a90b09a33607`  
		Last Modified: Tue, 14 Jul 2026 02:24:44 GMT  
		Size: 15.9 KB (15901 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:007df820ba6f44e7e9e6af3d099eb1dc676327bbd0bafcbff7efffc4e0db74a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.5 MB (225523336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2652d7665501d0afeeeb7a876095bfdd6d0e704e802f0518a86e176b69059a3f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:31:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:31:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:31:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:31:39 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:31:39 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:31:57 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:31:57 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:31:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:31:57 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:31:57 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29acd7a221264bde87d3314d9221d4bd5dfd088b80d496a3acf87ed4c5f1e247`  
		Last Modified: Tue, 14 Jul 2026 02:32:20 GMT  
		Size: 93.5 MB (93504340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adab416361a78b8abe2972be733c00c11fc81bf0dc9106d8cd785477e833a229`  
		Last Modified: Tue, 14 Jul 2026 02:32:19 GMT  
		Size: 82.3 MB (82343774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23f249a7a05665b4aede662e72d04636ff472783140f3934272107fe083520c6`  
		Last Modified: Tue, 14 Jul 2026 02:32:16 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7629e06a1c05094d4be611ab3470d8609f7fa3b4b293b667db6283db0c7ec3a8`  
		Last Modified: Tue, 14 Jul 2026 02:32:16 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:bc2c93a887751ca5780cd7ef5e68bc7928e2feaeaa268f67b56d25ad4c8c6b21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7456161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:877d1efbe8508ccd18c275d5cf86dfab180788448df5327c21beca3ab54a6fab`

```dockerfile
```

-	Layers:
	-	`sha256:8d1197e4205de2dae98413332b1f346a5355af176f80be8f9fda41d25e9c37a6`  
		Last Modified: Tue, 14 Jul 2026 02:32:17 GMT  
		Size: 7.4 MB (7440142 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a19bb4796c7ed5b641cefaa1b8df6df3162e0e663dc23c9331477775d0ae4b0`  
		Last Modified: Tue, 14 Jul 2026 02:32:16 GMT  
		Size: 16.0 KB (16019 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:8a57f98b05ccbad05bbe88e5a21f165d34ab53794ece104496399ef80c89cded
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.0 MB (234976181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0b2e6d5a2aaa4c22f7749965490ac8fbcb6d923ee5b34a50e5c8c26e12277e0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 08:58:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 08:58:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 08:58:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 08:58:07 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 08:58:08 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 09:08:14 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 09:08:14 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 09:08:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 09:08:15 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 09:08:15 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:745b2c9d3139d6aed0b2af22d15f023d127776cd4cd5c9d5188be038d8d70a3e`  
		Last Modified: Tue, 14 Jul 2026 00:15:39 GMT  
		Size: 53.1 MB (53134011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96a7badcc1fa9ad746ebb9552e5881ca4910ee681cb7bbcd6cf93c7093d66707`  
		Last Modified: Tue, 14 Jul 2026 09:01:17 GMT  
		Size: 93.9 MB (93902052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e928f10d90848a031bb9ed20a033f601ab53710a4af9d4b80d7b90f9d6c21eb5`  
		Last Modified: Tue, 14 Jul 2026 09:08:50 GMT  
		Size: 87.9 MB (87939076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e1977481b78f58253542c1297f219a0e2604e5baaf4eaacfcb0cac28dd92d8d`  
		Last Modified: Tue, 14 Jul 2026 09:08:48 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:949272154d630567ff30a56d22bc6aabb365e2f866d41803ed9a9be78a7fe9b6`  
		Last Modified: Tue, 14 Jul 2026 09:08:48 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:491b9a6b0747a0b5f740f1e93bffe3183750740402b72fc1727db15fe472ef7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7438058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18ee0f2def05048b4c9508f9304c5582b0eed4f67486c37549fb170b8b05d497`

```dockerfile
```

-	Layers:
	-	`sha256:f9fccf0d6914fb4d4c7107656aca40d326f5e07f21afc36a074fb2fe28927633`  
		Last Modified: Tue, 14 Jul 2026 09:08:48 GMT  
		Size: 7.4 MB (7422109 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:18850c68df05704ebdeb93eddc4aa1478c13ca3d08f419d72c177b77340cdae5`  
		Last Modified: Tue, 14 Jul 2026 09:08:48 GMT  
		Size: 15.9 KB (15949 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:811d913e16691cbbd46a433d837349777f03b73d37fb640710891a10f29f8b30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.4 MB (223422121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8b33e03eab1e25f2bbcf4964a887372c4bedc4729e16098c948fe0a30bda589`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 04:36:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 04:36:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 04:36:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:36:32 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 04:36:32 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 04:38:46 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 04:38:46 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 04:38:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 04:38:46 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 04:38:46 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3b67c0872a1a1dce2849ed0a6773531451a02c1a681d58d89f062b6003c72e9c`  
		Last Modified: Tue, 14 Jul 2026 00:17:47 GMT  
		Size: 49.4 MB (49381708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a247e220221ae19df19c706ca94c4cd50e9069186f2009b7daf0d3b713dc2c22`  
		Last Modified: Tue, 14 Jul 2026 04:38:12 GMT  
		Size: 90.5 MB (90536963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5423a52ac16efb3a77ed81db33979115eb632bda2809c8444f8e0f5ea324a694`  
		Last Modified: Tue, 14 Jul 2026 04:39:12 GMT  
		Size: 83.5 MB (83502412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb5138af99d344c1eee0d4455abd94ef7a027531198edd8cc2abf6229e5c6135`  
		Last Modified: Tue, 14 Jul 2026 04:39:10 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f44393b2a177fd51ef6140f316c5c6a6e895ee4fc2ff5c5515243a9a56bf1005`  
		Last Modified: Tue, 14 Jul 2026 04:39:10 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:3da0ad45cec7ed4d6146bf390d46553914451f2dd0d147072338d51d61239dd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7430761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17fe1babeb4c27351ae78c9148d834f295fd2ae88fe89cd3142cb507e407148d`

```dockerfile
```

-	Layers:
	-	`sha256:c17769294e8fb511a948009020fe6e093b03a3e39764fa2b7e8e6f575ab907ab`  
		Last Modified: Tue, 14 Jul 2026 04:39:10 GMT  
		Size: 7.4 MB (7414860 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a52037d84664a18f8f0028345aa6200f35c38d22677d949f93bedfdedaee220`  
		Last Modified: Tue, 14 Jul 2026 04:39:10 GMT  
		Size: 15.9 KB (15901 bytes)  
		MIME: application/vnd.in-toto+json
