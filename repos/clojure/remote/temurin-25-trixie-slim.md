## `clojure:temurin-25-trixie-slim`

```console
$ docker pull clojure@sha256:7c48ec3f06d8347754aadd221e5c230f617fb41dbc58792fe54e5c0f5788b0e8
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

### `clojure:temurin-25-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:16de93f4a2b8abe585bc900a185799723292e854d92fd3522ba6528c344d92bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.3 MB (191328690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:601ab6fce8a3dd458850d4ae50a4a42eb5ba4b66022c3d87023d39dd4650a1d0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:23:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:23:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:23:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:23:05 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:23:05 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:23:20 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:23:20 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:23:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:23:20 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:23:20 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5fff0f67f83e82c13256dd78362f297646bf209f5d84a718cb5c584cc0b89e5`  
		Last Modified: Tue, 14 Jul 2026 02:23:42 GMT  
		Size: 92.6 MB (92574624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f975736fe8d8915fbe993f096972a89a7400068150d62e8be4ade500d49596e`  
		Last Modified: Tue, 14 Jul 2026 02:23:42 GMT  
		Size: 69.0 MB (68972119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7366e163a1a704fc25900c854223c100af6a16323563da29f9b704693cd4311`  
		Last Modified: Tue, 14 Jul 2026 02:23:39 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc0915c665b309f8c86ff177294453a44d15f8340d65ffe87436a3792ab59fdb`  
		Last Modified: Tue, 14 Jul 2026 02:23:38 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:dca1f556e379ff6b863bf9ecb535a221e9939f524f4a3ff4ec4533c90f4b58cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5242061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62740294c1eb67a1a2914e1c469a90f549726a2d9b1733d3b5b952c0ee58b2a4`

```dockerfile
```

-	Layers:
	-	`sha256:26b139b46f20de05d3a97f521e531fd00d84b945b1769ea21bdbbd424e7f541b`  
		Last Modified: Tue, 14 Jul 2026 02:23:39 GMT  
		Size: 5.2 MB (5225414 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:797faeadb10a94c39f5fcf258fe2130da312607b354af9d508d4006abc4f57b8`  
		Last Modified: Tue, 14 Jul 2026 02:23:38 GMT  
		Size: 16.6 KB (16647 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:218dadd43243a6c7d138f376b734f05ab6b132e9a22cead0464640889477d21e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.5 MB (190465150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7388512e2cd6b1afc026ddcd317b9bd4b94c6889c9342a13266178d94d5e1e3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:30:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:30:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:30:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:30:19 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:30:19 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:30:36 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:30:36 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:30:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:30:36 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:30:36 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f339def54e8a2bd61e832a081ac7dfac281026f2ebf3136a6d0cfeffcb70eeef`  
		Last Modified: Tue, 14 Jul 2026 02:30:57 GMT  
		Size: 91.5 MB (91542261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9d6feb5b2110999056c69be14d0535b4ea3613c249fc8c5cc5ab83a185ec59a`  
		Last Modified: Tue, 14 Jul 2026 02:30:57 GMT  
		Size: 68.8 MB (68778147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92ef5d96e6c2580357e4375495fa5f108a8e51e525e790c5a446b312ba4b37a7`  
		Last Modified: Tue, 14 Jul 2026 02:30:54 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6a8ecae948815eb9734d4befc40c00b2546c23f6fc4fc03d0218dfa28a59cfc`  
		Last Modified: Tue, 14 Jul 2026 02:30:54 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:09c344c989eeb444f49bc94af9a85beb9ae0cb076358db5e603baf344e7ccc2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5247984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b572ed374987ba27869890cdbfc9bf9a404a9859e3111da7b2cc01c967e07dde`

```dockerfile
```

-	Layers:
	-	`sha256:82513867fe498f2072735feb543095dfe449bf4c148152421b2241765b600eea`  
		Last Modified: Tue, 14 Jul 2026 02:30:55 GMT  
		Size: 5.2 MB (5231196 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c4ffb3f4c3e67fdb3aebf515a015fb769753ad4fca6b93a6a93d8355c2acc8c3`  
		Last Modified: Tue, 14 Jul 2026 02:30:54 GMT  
		Size: 16.8 KB (16788 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:e6cf5d3a8a266d0b837258b1c55113128b2b9db9437010aa4b1129faa5d4edc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.9 MB (199892033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3be64147b703d13b219f455db666e2ad75ee8a6b8eb8a1f25f6082522aa0d07c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 07:38:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 07:38:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 07:38:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 07:38:00 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 07:38:00 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:45:43 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 07:45:43 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 07:45:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 07:45:43 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 07:45:43 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dded89c0fbadae3e88ca11a21c39a0eaa230a16a309c2574c9b3e2a41fb03373`  
		Last Modified: Thu, 02 Jul 2026 07:41:52 GMT  
		Size: 91.9 MB (91914031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bc474c5334d442148c9f8c8d53a9f9cd9f389ce252347efec7080e1d61e020d`  
		Last Modified: Thu, 02 Jul 2026 07:46:29 GMT  
		Size: 74.4 MB (74370570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3507e1d9b4ecb000db64f79327d0b73caa7805bb8b93fb5323f9881910fef734`  
		Last Modified: Thu, 02 Jul 2026 07:46:26 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46506dab51c94b238d04cb1569a442c754b942112c52185bf1441d2b153dde1b`  
		Last Modified: Thu, 02 Jul 2026 07:46:26 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7b6b24bb7c22d46677bdab7636b69841dc60e2ad50a3e10e6382571e23d2e9d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5229762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b106e26f25b54bfbd4b3e6c3f690e1c72590884919694283af0883f54a1cf390`

```dockerfile
```

-	Layers:
	-	`sha256:7d1f45357aed41571956dc27813eb6b5060b15a9cca487dc5305bca223aead11`  
		Last Modified: Thu, 02 Jul 2026 07:46:27 GMT  
		Size: 5.2 MB (5213055 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0dedcbb80c7082b5a27d126444bf61d30d0710020dadfca6485aca9e25e2a16d`  
		Last Modified: Thu, 02 Jul 2026 07:46:26 GMT  
		Size: 16.7 KB (16707 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:e304415159f97cb68f873ea0d63a4bdbb968dedf5a7a4aa630c202b2b1fa2f33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.2 MB (188210987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a45f65a9220348a9f17bb0e461aee323257347498339f710c9ae85db6ec5f1e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 04:35:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 04:35:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 04:35:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:35:52 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 04:35:52 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 04:36:08 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 04:36:08 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 04:36:08 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 04:36:08 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 04:36:08 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5d1260bb650febeffa866249f9cd760f884ce94dfde74f93ddc99886ba8e963`  
		Last Modified: Tue, 14 Jul 2026 04:36:35 GMT  
		Size: 88.4 MB (88420359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:096e09494363b17f65cf5418bf564ee2118dbfa9f5c5e0f343f121637eade04d`  
		Last Modified: Tue, 14 Jul 2026 04:36:35 GMT  
		Size: 69.9 MB (69942959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:930f05b620670b4a4a8a1fff97ccb41460bc5da191db53a072aad47c6f484d06`  
		Last Modified: Tue, 14 Jul 2026 04:36:32 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:289743215e371add4aca2ea0258348934bae79c5b20d6a4fc87b8cd02adeb7a4`  
		Last Modified: Tue, 14 Jul 2026 04:36:33 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:65d4db24ec47dc036f822047666e42d374b09a7e3fdbe7d2fcbaf64402b6211b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5222547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a97dab3ff50e404f73909baa906dbceac27ff9b5e25b6723061af2e02d1ee5e0`

```dockerfile
```

-	Layers:
	-	`sha256:c5e581169ffb641a2a90253e25052bce1eb28d8a2fec9dcd298db1c3be72365f`  
		Last Modified: Tue, 14 Jul 2026 04:36:33 GMT  
		Size: 5.2 MB (5205900 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0949de9741a9775230937f39510d4a3edfae4931fe334741379f9a817e6e143`  
		Last Modified: Tue, 14 Jul 2026 04:36:32 GMT  
		Size: 16.6 KB (16647 bytes)  
		MIME: application/vnd.in-toto+json
