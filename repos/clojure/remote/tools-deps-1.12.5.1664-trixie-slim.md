## `clojure:tools-deps-1.12.5.1664-trixie-slim`

```console
$ docker pull clojure@sha256:c744e97b47f690615f2ed42681a5e9551e6e678e4f407c197eb99eb189ac2c41
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

### `clojure:tools-deps-1.12.5.1664-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:a3cacdef896053dbf7850b2fa2515e4f64a61cd15278d090419e76e26f611099
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.4 MB (191374098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9917f238b56adb94c099cbe957091ac5e4edfeb61fb88e648dbf2b6d5e36a261`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:52:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 00:52:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 00:52:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 00:52:48 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:32:15 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:32:30 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:32:30 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:32:30 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:32:30 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:32:30 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e390497c5348be40bfa3eadcc5a38df3a7d8c167e76943c6fa9d11cc6eb5612`  
		Last Modified: Tue, 25 Aug 2026 00:53:45 GMT  
		Size: 92.6 MB (92615083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:285c1b79d1cfc6a435bf514f42a478dcd09f9e5632442ab99978bde79429c677`  
		Last Modified: Tue, 25 Aug 2026 01:32:47 GMT  
		Size: 69.0 MB (68965316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4db26374b631085eefc9ef5643e6f522ba47a5bf3b0d72fb23f71ee44086e602`  
		Last Modified: Tue, 25 Aug 2026 01:32:45 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96c524160ae7d4d5742f43b52d878c294a19f9016e101e5fcb2416a9061498ed`  
		Last Modified: Tue, 25 Aug 2026 01:32:45 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.5.1664-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:96cab79a5899c0837e3c6b2b1a4b64933600ab28f142e00a28cf54fc8c15fe60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5241338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82a0c9711ba0eb521f07325cbd5531495af9547153913b99a53c1f20eb1a4d00`

```dockerfile
```

-	Layers:
	-	`sha256:0e2c167eecdfb4015d80b6b8d9b6cf48893e676904debe2431399fdccd3b95e2`  
		Last Modified: Tue, 25 Aug 2026 01:32:45 GMT  
		Size: 5.2 MB (5225644 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c8483021c1271d4fe4468d80fc3ba0361ec84b109fdae0a9b7f138520aadb47`  
		Last Modified: Tue, 25 Aug 2026 01:32:45 GMT  
		Size: 15.7 KB (15694 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.5.1664-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:94cecc2b155cc9f5bded9e1fc7512e7fd8b351ae51cca4829462eea703446cf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.5 MB (190478422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1cc05efe8459fd2bcfb9dffade5d485db35cdea74ee58d28fc92902f38116b8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:36:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:36:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:36:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:36:38 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:36:38 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:36:55 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:36:55 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:36:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:36:55 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:36:55 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f14080f6cc0418c1cd0032bf320dc5af7c777dae5932386945ba0d69f2c84f8`  
		Last Modified: Tue, 25 Aug 2026 01:37:16 GMT  
		Size: 91.5 MB (91532219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b91747d8c27bbc30665cb7e244b332ff447f7453da0ed8c20c526147fb07a8f`  
		Last Modified: Tue, 25 Aug 2026 01:37:16 GMT  
		Size: 68.8 MB (68785580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:779372d0f30deaab7356c0c51ba0668801b77db0cf1b48ac73b0af4ae6c55125`  
		Last Modified: Tue, 25 Aug 2026 01:37:13 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4227b468df2607766d4717d3be15371d15d192b8522097c3036e15958d45bb`  
		Last Modified: Tue, 25 Aug 2026 01:37:13 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.5.1664-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:98e9f32c3565281cb4eeff0575c179abd152bbefa15dcb2cabcd7d3d1d7cc95c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5248214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c9dfa28e376fb7d01a6bc8c4d5ae6f4a076f54544e2eef0839eb3eb70d75d87`

```dockerfile
```

-	Layers:
	-	`sha256:7ae592518485593ff42de9f74e4eb1aa0eee2b4705aa274997e05f72951d7977`  
		Last Modified: Tue, 25 Aug 2026 01:37:13 GMT  
		Size: 5.2 MB (5231426 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b1c04d49b3b67e15252eb45a84f89ab6500a6c67a974ffdc64e4e1eda83d4334`  
		Last Modified: Tue, 25 Aug 2026 01:37:13 GMT  
		Size: 16.8 KB (16788 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.5.1664-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:5e200d184efd468f6128a51124bef86d3eeb1beb08a379f6187e89a7e51a7efe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.2 MB (199249038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bad93222db0c2a26e238b7f80206db1990c105be87d58376f44c4c47bd447576`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 08:46:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 08:46:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 08:46:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 08:46:02 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 08:46:02 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 08:51:15 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 08:51:15 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 08:51:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 08:51:15 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 08:51:15 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fd316f1d386d891f8b8f4839d7a7b0fd7682b3d7f8eae8e5d9c5cc93d5cccbd`  
		Last Modified: Tue, 25 Aug 2026 08:49:37 GMT  
		Size: 91.3 MB (91255838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01423fb44b975dea4c63788cc2943bc523b9f7b0d86e5ede61a855f8bc253980`  
		Last Modified: Tue, 25 Aug 2026 08:51:52 GMT  
		Size: 74.4 MB (74376695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2e0b7b1afa8eaa15331aae0c87fe3b2ae6f29ad18d4ffab03744ff57a6b9e6d`  
		Last Modified: Tue, 25 Aug 2026 08:51:49 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3e003a4ba3e60cc776bbc49cadd93fa0ede808baf08e61c0482ad18f7ef1847`  
		Last Modified: Tue, 25 Aug 2026 08:51:50 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.5.1664-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:9107d8ba7c86e6c9a216b434aa5a956a8d67f589e919deab0a5606983f7c1c84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5230046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:608eae66c5a2037c8b47a3d8f0ecf57c27dda6fe0222a299d7739bc952a81f99`

```dockerfile
```

-	Layers:
	-	`sha256:95f747f243245274883484c78f1c14cf0f5a61f5337101716a1b799113dba30c`  
		Last Modified: Tue, 25 Aug 2026 08:51:50 GMT  
		Size: 5.2 MB (5213339 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d7f2703ef5b3b9bf673f60568cbc2f9ab799656e0ebbef5f6191b7b769c9962`  
		Last Modified: Tue, 25 Aug 2026 08:51:49 GMT  
		Size: 16.7 KB (16707 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.5.1664-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:b39be3408799625a89c96c3b706af6c4e0f019f91db3c9695ed39fa32bb0560e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.2 MB (188236069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:315b829d244048cbe65b7c836086f076fa22778231c5e53bbd2838f2ddcbee02`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 02:10:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 02:10:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 02:10:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 02:10:16 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 02:10:16 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 02:10:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 02:10:31 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 02:10:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 02:10:31 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 02:10:31 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaa685fab59e7a5dc3e397107fb625359499cd806d7e36b9b343d8e05d5ff4af`  
		Last Modified: Tue, 25 Aug 2026 02:10:58 GMT  
		Size: 88.4 MB (88421954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:865f0176eba66b529370efd0bb6fc1625b24028490ed0382c2b844cb07c5bfc0`  
		Last Modified: Tue, 25 Aug 2026 02:10:58 GMT  
		Size: 69.9 MB (69945355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e721876665beedb8cb394036dadcddb98c0344ea044ead312cd71419974f506b`  
		Last Modified: Tue, 25 Aug 2026 02:10:56 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cc5b505d0ce8d51057e9c14a0961bbc79980098c4126d5c735b21e330c533f3`  
		Last Modified: Tue, 25 Aug 2026 02:10:56 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.5.1664-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:55b6b74b72e40cedc845b7b13616483489f0ae06ae83d32db82409b3d0dd99dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5222777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebee709f28d85860bbf1720516f022834497a73afdb37680469ece6c2478d4ba`

```dockerfile
```

-	Layers:
	-	`sha256:da52a33214c22a98a73c04b14626b7d4961284ba5a6b3625cf961c097a324476`  
		Last Modified: Tue, 25 Aug 2026 02:10:56 GMT  
		Size: 5.2 MB (5206130 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1cd979f9d7af8dff79e8bd4d9c213125e2e1b9c7c78272656e8cdc4406a0c187`  
		Last Modified: Tue, 25 Aug 2026 02:10:56 GMT  
		Size: 16.6 KB (16647 bytes)  
		MIME: application/vnd.in-toto+json
