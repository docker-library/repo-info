## `clojure:temurin-21-tools-deps-bookworm-slim`

```console
$ docker pull clojure@sha256:6b583364517242a52a292adf57488c8b2ba32fe1a6ac174bd33418fc542139f0
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

### `clojure:temurin-21-tools-deps-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:0413b65d7cbe60f2896dd8146ebb67fca342ef85c07434997dbe766de823d351
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.1 MB (253057627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1807bd0ae52e2354a20119bb4c5904bc0d1b720e3ed1d6fe69f52ff47511b56e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:52:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:52:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:52:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:52:12 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:52:12 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:52:26 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:52:26 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:52:26 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:52:26 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:52:26 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49637ecb5ca34960ef2d0c84f4366c1f66c97905381b25d5412d129b6d1a930c`  
		Last Modified: Tue, 04 Aug 2026 02:52:49 GMT  
		Size: 158.2 MB (158166921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cebd57db716b38395cefa42ae99970d86bb30beb3ed21d6b84267cb77bc06f1`  
		Last Modified: Tue, 04 Aug 2026 02:52:48 GMT  
		Size: 66.7 MB (66657021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0545b4ac6cbefeebd0e72ab01807d1db148a4c9209853249e214ed369370f8cd`  
		Last Modified: Tue, 04 Aug 2026 02:52:45 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:432bee506be31a82dfecfdfecf293c1e20a981c12a52e5aa34a1bb64945019f9`  
		Last Modified: Tue, 04 Aug 2026 02:52:45 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:28448dc7b7057790d74a15144af24c8789d5bdf3073461f896581d19687c4013
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5131876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aea74f600c71d9204f936dd82ace3d0a195443476552cbb68238cd553fcfe188`

```dockerfile
```

-	Layers:
	-	`sha256:a8f5e67d9fe22e826531f209b25669093248dce882ca0ecd448cfb72fd178362`  
		Last Modified: Tue, 04 Aug 2026 02:52:45 GMT  
		Size: 5.1 MB (5115887 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8b702e84663e6dc46674e1a163ba2239eff8022c7794e28f597ae10ae6666f4`  
		Last Modified: Tue, 04 Aug 2026 02:52:45 GMT  
		Size: 16.0 KB (15989 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:6f849409fb01a528932dd3c167ad105eb9a6814331a19ce01559687c334c508b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.2 MB (251227861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f45e6d5c1ae1ba98354408f4e87b6c0c0f44f5cc15f5af6735706e6e7b5b93ad`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:52:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:52:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:52:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:52:32 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:52:32 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:52:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:52:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:52:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:52:47 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:52:47 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec1c8c7b2c3eabc183b2604d83ce3a45d590d6fbfb7e47f2b6988a78cd7b63e7`  
		Last Modified: Tue, 04 Aug 2026 02:53:11 GMT  
		Size: 156.5 MB (156461273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:642eefa3a4f641a2585d465709b2a9b9a330d6f9e3678f80d99041c8abcae903`  
		Last Modified: Tue, 04 Aug 2026 02:53:09 GMT  
		Size: 66.6 MB (66648289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55d74c5ac0ebd4ce5132867967fcc89cd9a409ca55588c57e9ccaba22c120ea2`  
		Last Modified: Tue, 04 Aug 2026 02:53:06 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f848562e3c8edcf977636ff5c803ffe230f0f190900c0b536a4d84234bed623`  
		Last Modified: Tue, 04 Aug 2026 02:53:06 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b0e3b4ac13b69f1638987f46ab49989846e5dc1975defa11e9e060f9941e7835
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5137756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f782a3c212f44f2587139d03b2f4a5f85c46f1a0562490e19d4e1d1ba5d6d5c7`

```dockerfile
```

-	Layers:
	-	`sha256:3b1d23267d5101edd3b5660a21d32a9f557e0dcac51d9226f67f5afd04fa4a8e`  
		Last Modified: Tue, 04 Aug 2026 02:53:06 GMT  
		Size: 5.1 MB (5121648 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c960a574a1a94a32318ac4426655f75ae56f79a1a97bdf33efc9e761587cdaf7`  
		Last Modified: Tue, 04 Aug 2026 02:53:06 GMT  
		Size: 16.1 KB (16108 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:88049e131f94c1ea1a157f4e91dc7f091e95633a02e9a2af9e5fcdaf5bcba2aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.9 MB (262907391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6395534d6536a9fba187084c904ab2d51013f200757faab59ed63ba1a40e8ac3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 18:06:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:06:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:06:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:06:25 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:06:25 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:07:03 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:07:04 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:07:04 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:07:04 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:07:04 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11ded0617a63b7f6b4c9d5392e7ef958bfd86290adb20bb7270e2f90faf26603`  
		Last Modified: Wed, 29 Jul 2026 18:07:46 GMT  
		Size: 158.3 MB (158343252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1274443b5250c08a06f03f87309bec72f72cc75af7f0a3efffa91062d65f62a7`  
		Last Modified: Wed, 29 Jul 2026 18:07:45 GMT  
		Size: 72.5 MB (72486681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db2fc57edeb44b0157f9ff51ef827d1fe5c9dc1ff78fd9099e24015a8175ee30`  
		Last Modified: Wed, 29 Jul 2026 18:07:41 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:632c54d8b24ec6cf3c1162f54497b16b82bb87b33ca2da7fabbd0dfdd55f7b02`  
		Last Modified: Wed, 29 Jul 2026 18:07:41 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e060ea5288098ccc9c1008f38ad05b7de6196a583b04f2d5096a16385728b757
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5137083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60ea726af2d0ffd40faf784a55ef9c81c8c85a1dc0eb3b20a5fd204aebe2cb79`

```dockerfile
```

-	Layers:
	-	`sha256:8df10ae6d963a3281ba42ec1eb2b4de7afa93160e9241123984ef73c74a0e0f0`  
		Last Modified: Wed, 29 Jul 2026 18:07:42 GMT  
		Size: 5.1 MB (5121045 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:845aef1d76313c69c7e0d3255bccd77d1bd72e6f53727bc8a2bbeea9152f5cb4`  
		Last Modified: Wed, 29 Jul 2026 18:07:41 GMT  
		Size: 16.0 KB (16038 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:bea0bdaa3eeaac827767420e7a45b887fd189a19fd7237af97c36cb285b165f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.7 MB (239733773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c59ae79b9d6a610894ce2f2d3cd4220bb95acb9a71547fb73cfd16a015cf82c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:57:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:57:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:57:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:57:24 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:57:24 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:59:38 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:59:38 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:59:38 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:59:38 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:59:38 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4a3f24365b2b7be6a120bb31ebefba7be7e45fc966d4300ec3976b14e69bc0e`  
		Last Modified: Tue, 04 Aug 2026 02:59:01 GMT  
		Size: 147.4 MB (147388360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a15bd6f07fdb3ba83d9a51843fa57b79a0a9088070520ebc02a2e33d6b967ec`  
		Last Modified: Tue, 04 Aug 2026 03:00:02 GMT  
		Size: 65.5 MB (65456103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:988279db3429747ad139e59575fcafcd1227f6c1949e1320eade1ccfd6caec87`  
		Last Modified: Tue, 04 Aug 2026 03:00:01 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c7a30479c2266a53cb27254d284a348210f74bd6e0744259721361509088386`  
		Last Modified: Tue, 04 Aug 2026 03:00:01 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a011935ba5e24e36bd93cb4bc73d3e536b1fcc98fe0f80187bde200a4f87392e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5123198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8dd7963de63143409ab30412fa7e262c7694bc95525ea17333ae4095b15549b`

```dockerfile
```

-	Layers:
	-	`sha256:966453330ea9c4b6fa04d144340f93b2365a0e466e147e3e02537f9b57b299cb`  
		Last Modified: Tue, 04 Aug 2026 03:00:01 GMT  
		Size: 5.1 MB (5107208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82b0214fb7070cf389be398ee71bf7350401e7560a7c2f79344130190513066e`  
		Last Modified: Tue, 04 Aug 2026 03:00:01 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json
