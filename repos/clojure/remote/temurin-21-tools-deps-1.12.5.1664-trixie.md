## `clojure:temurin-21-tools-deps-1.12.5.1664-trixie`

```console
$ docker pull clojure@sha256:7f5e6bd19658736d9dae9ef1fdb311a3ecd36f77822b0a21e2af4c5c2eefc3c5
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

### `clojure:temurin-21-tools-deps-1.12.5.1664-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:fe817a80bfa28ae73b66aaafd1d795aa23c2a77600cfe1dd08942fda37ca73e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.0 MB (290018178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15f612b0fec7b18b605edcbd381a86bdc915914bb05c428d3e139c64e375b995`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
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
# Tue, 04 Aug 2026 02:53:30 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:53:30 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:53:30 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:53:30 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:53:30 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2634f5461ee52d63380a15821b0e07bf482be38be684b91ff51dcedc9faa9476`  
		Last Modified: Tue, 04 Aug 2026 02:53:54 GMT  
		Size: 158.2 MB (158166900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2569ef6891759d5144a2a39681cc8695d5d2c3b1f50323f9d9c1a99ac859040`  
		Last Modified: Tue, 04 Aug 2026 02:53:53 GMT  
		Size: 82.5 MB (82537665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f35e6ef70f578a49a6303266b19f9e107b46be0c55c26fdbb13655471eb81748`  
		Last Modified: Tue, 04 Aug 2026 02:53:50 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4cfd09da51f103c981d57b84d9ebf25841be577f261bc695eae11558d4776e2`  
		Last Modified: Tue, 04 Aug 2026 02:53:50 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:936341ededaacfc06ac294154834826bb129cdf466d21d5b299e9a454a7604c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7486653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d06365384e1b484e8cdcb4d720d262756d7e85655d1e196f15e44b0af2ef0a9`

```dockerfile
```

-	Layers:
	-	`sha256:4e7599e527df3e799ec7b9017d032039a1be3e57fce1eba4ee72188824b736d0`  
		Last Modified: Tue, 04 Aug 2026 02:53:50 GMT  
		Size: 7.5 MB (7470745 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c97c6174ba6750f949d2d9b47eb525eecc6214efe996d4fa97a72ab752bc125f`  
		Last Modified: Tue, 04 Aug 2026 02:53:50 GMT  
		Size: 15.9 KB (15908 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.5.1664-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4f7213aec4de2a7dab861ed907fb6616ca7e303fd23dfb128496d63372914378
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.5 MB (288495644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f0e0cdf2d4a3adde62eb6070fad6c60b3d287eeb133ef281268d728959ec3e4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:53:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:53:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:53:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:53:29 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:53:29 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:53:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:53:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:53:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:53:47 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:53:47 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44b34eaf913b9c51e35755e04b3ee22b4d0211c0701cb8b8ae8ca581fa9bcf07`  
		Last Modified: Tue, 04 Aug 2026 02:54:13 GMT  
		Size: 156.5 MB (156461269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de8458d93468ef67bac8ff5ae919fd2713d238d0d3a2d140ca3ea611824526b6`  
		Last Modified: Tue, 04 Aug 2026 02:54:11 GMT  
		Size: 82.4 MB (82359148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a504bff97d0c4943f40367fae6fc5517543bcf327e1f1e46b86a17cb1eaea526`  
		Last Modified: Tue, 04 Aug 2026 02:54:08 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9a13f0d36ca64554c7cc1a922039744afa8ce9e1ab270c8aef741a27f6d424a`  
		Last Modified: Tue, 04 Aug 2026 02:54:08 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:c693dccdfe8063560c480f31f5ba8cb402d78c046e02ec751db0dc61f7b53122
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7493164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b12e6b6f6f7eafb083c74819da91f6fc79d1b98f4e43fc1c53e6927b3f3ff39c`

```dockerfile
```

-	Layers:
	-	`sha256:ba62cc0172823e9510ec33f4303aad5413d395f0861089e85316c0259af1294d`  
		Last Modified: Tue, 04 Aug 2026 02:54:08 GMT  
		Size: 7.5 MB (7477138 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40f50fb262bec5113e17b993be07df4c3174f0dff9f8b51e50e05bfb981cefca`  
		Last Modified: Tue, 04 Aug 2026 02:54:08 GMT  
		Size: 16.0 KB (16026 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.5.1664-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:f0960ceee57c3176ed3cdc9b484356b0f03c7ec19583b844bf904deef470829f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.4 MB (299428418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f54477ca61342944be89672c93bff30b2e3d060b858c6826a9086c86e34481d2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 05:29:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 05:29:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 05:29:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 05:29:34 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 05:29:35 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 05:37:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 05:37:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 05:37:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 05:37:32 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 05:37:32 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:745b2c9d3139d6aed0b2af22d15f023d127776cd4cd5c9d5188be038d8d70a3e`  
		Last Modified: Tue, 14 Jul 2026 00:15:39 GMT  
		Size: 53.1 MB (53134011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d0ccba3f4764e4f97d5f565e01d7d626112cd4244ca4ba353e8284261ac0900`  
		Last Modified: Tue, 04 Aug 2026 05:33:18 GMT  
		Size: 158.3 MB (158343264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5d438ca8c62c3a1411c36e40fdcb4e76422910db7960e4f581a3f521f983fbf`  
		Last Modified: Tue, 04 Aug 2026 05:38:13 GMT  
		Size: 88.0 MB (87950103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:154642738782a1c92f4e29e515c991bd9678524f5f35818669c958b8913d541f`  
		Last Modified: Tue, 04 Aug 2026 05:38:11 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f1a2baea7fabff86520de5ad9dab7121581e20c881e995b66aca905478f4bc5`  
		Last Modified: Tue, 04 Aug 2026 05:38:11 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:8f81723efc589fe9bfe07a6a55400b4889d244bdc4b990ecaaba73de485b39dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7491121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d618779e9fc95ffee1c555ad30cb96867d2069feaaf520996fb17fca162690fe`

```dockerfile
```

-	Layers:
	-	`sha256:6832c3fa33ab002cfd1ebabe0c09f561bbb73c316f69c5a46b74e29e3670af98`  
		Last Modified: Tue, 04 Aug 2026 05:38:11 GMT  
		Size: 7.5 MB (7475166 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d0d29b5047b4fa34cddea9c5ed4eaf3f36469c180d45ceefa0ba8943bf62a0b`  
		Last Modified: Tue, 04 Aug 2026 05:38:11 GMT  
		Size: 16.0 KB (15955 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.5.1664-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:8711eb53206af15a5564158cb73fd7fb5c29e7d06d68a4a00c0610888888557d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.3 MB (280289797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c326c5f1918a4cf997cfc7db2d3a2d873e92b14d8f73984df4961298bd33ebc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:58:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:58:42 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:58:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:58:42 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:58:42 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 03:00:52 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 03:00:52 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 03:00:52 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 03:00:52 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 03:00:52 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3b67c0872a1a1dce2849ed0a6773531451a02c1a681d58d89f062b6003c72e9c`  
		Last Modified: Tue, 14 Jul 2026 00:17:47 GMT  
		Size: 49.4 MB (49381708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2dd5e148a09fb2fb6c102713911b8b5734e7f5cf38b228f35c11911462405af`  
		Last Modified: Tue, 04 Aug 2026 03:00:17 GMT  
		Size: 147.4 MB (147388360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2dee12833cb1e9864fbe678d60842c0925119c0584cfd28915dacbe52e8e2e0`  
		Last Modified: Tue, 04 Aug 2026 03:01:18 GMT  
		Size: 83.5 MB (83518686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6533262ab2492e673033abb228d5c51b0a7439c089a0d171021b0c10c4d5b29b`  
		Last Modified: Tue, 04 Aug 2026 03:01:16 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d27cee733c980303f173f234276dcfdc01e7edbcc801af41ee81d7939cd6623a`  
		Last Modified: Tue, 04 Aug 2026 03:01:16 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:004ae43da026bcf07b0d5d36f2596db0a0871676092cf288ffdcffadfec84652
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7482575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:926307867ce8aad548e91ce2c5a76cde558d348acb4c61ff8ad285211e6a5c0a`

```dockerfile
```

-	Layers:
	-	`sha256:fc5852e8771a414a10f5ce95d6c15073a6dad878f5e578059328a21087a2bad0`  
		Last Modified: Tue, 04 Aug 2026 03:01:16 GMT  
		Size: 7.5 MB (7466667 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d0f374f8c4d0469f5a885a02795fc0b36f5ed2caced8d7273ea9d53a0347d937`  
		Last Modified: Tue, 04 Aug 2026 03:01:16 GMT  
		Size: 15.9 KB (15908 bytes)  
		MIME: application/vnd.in-toto+json
