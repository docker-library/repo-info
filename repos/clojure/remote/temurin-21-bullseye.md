## `clojure:temurin-21-bullseye`

```console
$ docker pull clojure@sha256:430b7740b06e92cbd884b1ac7b116f8edfb6e550ddfbdc8837ac35322209670b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-21-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:41a7245f0c44af5df2b0f9e6901f0423a9550fa5610ae78f13a4a542b1c9a6a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.5 MB (278462851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee11afceedacee9366aa1265d42afd252fc805bcb9f99fce8cb2f51c4520a13a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 04 Aug 2026 02:52:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:52:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:52:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:52:51 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:52:51 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:53:05 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:53:05 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:53:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:53:05 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:53:05 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:67de115811dc004af37113c6aa85eaaeb7c71fbf7fb79c2219111439cbf76c90`  
		Last Modified: Tue, 14 Jul 2026 00:14:39 GMT  
		Size: 53.8 MB (53776576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05d48043e80456f7351b2e190ef8d35418459f9f97869259d8d8b02cd8c9138c`  
		Last Modified: Tue, 04 Aug 2026 02:53:24 GMT  
		Size: 158.2 MB (158167004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd2704fe81097c8859b3b22e3cb7b084a24ff40c907ca2d3fa0f8fa108f0e058`  
		Last Modified: Tue, 04 Aug 2026 02:53:28 GMT  
		Size: 66.5 MB (66518229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:893cc030a204569e7935a347764f7b3c2f4207515c468d0c6c4cacb304155210`  
		Last Modified: Tue, 04 Aug 2026 02:53:25 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9221010a3316876011aabf4fd2ef5e23e549f1b430839a124e4f8d7af0dabc4e`  
		Last Modified: Tue, 04 Aug 2026 02:53:25 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:94d8e4ee59ece88809752d23e3590303777c472ee25b9f5f051bbdd729674f16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7423233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f73938e37d73610b3ee2fec0f0cadf20ab4c013b10f16a3f14e729fbc2170552`

```dockerfile
```

-	Layers:
	-	`sha256:83e08e0e6026c64462c30a99c1a4b95ded58e7c440da1b5f5240936b5804958f`  
		Last Modified: Tue, 04 Aug 2026 02:53:25 GMT  
		Size: 7.4 MB (7407301 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f93b0966b948e48884054d8b7fa4b68478ab9befd2fd5516f6d2c11a56bf0014`  
		Last Modified: Tue, 04 Aug 2026 02:53:25 GMT  
		Size: 15.9 KB (15932 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:441b4e9d43b8ffead96e392a9cc124c99b728304a96d7f7dc3e635ec5629d78b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.4 MB (275408709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e01317e1af4c517798dcdcce54e1e3929f4bdd827ad091793552531ff58d88c4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 04 Aug 2026 02:53:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:53:14 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:53:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:53:14 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:53:14 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:53:27 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:53:27 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:53:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:53:27 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:53:27 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:05f35ed13b0f03b4d3292e29957ef64e978b7566be41843c7f2be1cede133720`  
		Last Modified: Tue, 14 Jul 2026 00:14:11 GMT  
		Size: 52.3 MB (52260890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e173d8f402c3bda388fd9e9b1217d95b5c6c95789fcb2ffd7edfd3e6cbb4f5e3`  
		Last Modified: Tue, 04 Aug 2026 02:53:51 GMT  
		Size: 156.5 MB (156461269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd6d934fd0d729d08257bafe8361db3a65d19a0fd10855b39f548c06ecebe373`  
		Last Modified: Tue, 04 Aug 2026 02:53:50 GMT  
		Size: 66.7 MB (66685509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6085d8580edde9443d18cd3610a0e5212170284edf04075a9d23b7cc46834f33`  
		Last Modified: Tue, 04 Aug 2026 02:53:47 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09dd9292d4e68ff3cb4d483630a7d4755d7172e02d79fcadda1cde0459b5c242`  
		Last Modified: Tue, 04 Aug 2026 02:53:47 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:bbc5e9cfb495010c38a79273c57ff53e54172db67ea68d6efeada9e69c29622d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7428450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:172cb370defeeaedcb5e8ec6fc82e8e66dd05bbb423ff1cb440c1a5df1bd3b34`

```dockerfile
```

-	Layers:
	-	`sha256:27cd8b2f3dda88a6c3e4d094948abff136315c4e42b330aa1c5c475f7b8a7557`  
		Last Modified: Tue, 04 Aug 2026 02:53:47 GMT  
		Size: 7.4 MB (7412400 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad791da1ab518d9c6edcf08ea99c8be396380fe8b9f15babb060d3a027895cef`  
		Last Modified: Tue, 04 Aug 2026 02:53:47 GMT  
		Size: 16.1 KB (16050 bytes)  
		MIME: application/vnd.in-toto+json
