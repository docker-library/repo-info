## `clojure:temurin-8-tools-deps-bookworm-slim`

```console
$ docker pull clojure@sha256:fc073f4d42f5a01103b100ccd8795e68a46eeedd26bd928010c30a383f597320
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:80c352388ca9bd2b592413552682496fc05969fdd4a945b32f3c3ce8b336d839
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150089281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f5d512035c83d75e9918d2f4704e4e62dd8cda5fb7a8caaaaedbe2b80c2f98c`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:46:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:46:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:32 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:46:32 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:46:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:46:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:46:47 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77e189ed5de7c37d8b4dbc5969e2c3012c607ed171b64ed9b7b1460f6fc5c74a`  
		Last Modified: Tue, 04 Aug 2026 02:47:05 GMT  
		Size: 55.2 MB (55198686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f91c91fe874edc3a42a83b97662aaae19f459c68209a3b01cd4e6a6f2c7ac0ef`  
		Last Modified: Tue, 04 Aug 2026 02:47:05 GMT  
		Size: 66.7 MB (66657306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df5d88c8642755421a3e14e35081534412c8b94498f62c717fb3b4cd0e2fd23f`  
		Last Modified: Tue, 04 Aug 2026 02:47:02 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3d4661f62843320cfaba144e51332d1c91f28d2bf83525629ec993a089380140
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5248797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff3d293369ad6326bc7619ded982eecebdceef4cbbb45784543c5ad8cf4cdfd8`

```dockerfile
```

-	Layers:
	-	`sha256:1eff5707a13a8f013d1f9ca7dd066b109d57a897435a12e762b01760b3d9aa80`  
		Last Modified: Tue, 04 Aug 2026 02:47:03 GMT  
		Size: 5.2 MB (5234395 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2f4a71f82096e15b01fd715a195717ba8d136a15e257edfb550e1198f240d657`  
		Last Modified: Tue, 04 Aug 2026 02:47:02 GMT  
		Size: 14.4 KB (14402 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e98eef28d7041a744534eac604f30aeb6ca281db1e16de539c11344a6ad6585a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.0 MB (149039108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d17b2748f29ffdfa20b4e5c7e7183a9e2f67ce439b0b77c46174cdc8f489179f`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:46:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:46:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:39 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:46:39 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:46:54 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:46:54 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:46:54 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca893cb838fa65d12b2f8501cfbcf7ab2df1794d36b6fc2b775a14ffbbc8f0bf`  
		Last Modified: Tue, 04 Aug 2026 02:47:12 GMT  
		Size: 54.3 MB (54272926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4d4ea3e00b59724c099aa6c6ff7d5297a96bc083e80df25e89d24d40fe638bf`  
		Last Modified: Tue, 04 Aug 2026 02:47:12 GMT  
		Size: 66.6 MB (66648281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0212a48dba49eb7281e7b33ad90dd52713d9d7d3a1eb885d93a9e89b81b315b1`  
		Last Modified: Tue, 04 Aug 2026 02:47:10 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3d7d37c748b0ab7e0df352ded41074f4d8933826e4d8d244c34a187fa62de37b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5255376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c183fd294d166de9226f872899b2be09a768d0c185403deb48da1068f15f3ca1`

```dockerfile
```

-	Layers:
	-	`sha256:5a107705f5dda328021095682497c40e19fd04274bdea3a77452c074d45d1c1a`  
		Last Modified: Tue, 04 Aug 2026 02:47:10 GMT  
		Size: 5.2 MB (5240856 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5d873d478046b3be2402702d2af001372454960dc79ae0923d623498e8646e4`  
		Last Modified: Tue, 04 Aug 2026 02:47:09 GMT  
		Size: 14.5 KB (14520 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:53f542a32f4d05a1d8f34e1f89281794175454f7f4a40cf8cbfaa0ff342d51bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.2 MB (157233112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92a21839c580ea40bddd58b04c2f0a3aaa5933de5db06125f6c8ab2066148be2`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 04:45:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 04:45:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 04:45:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 04:45:59 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 04:46:01 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 04:46:50 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 04:46:50 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 04:46:50 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cd9c2d621d3ad89008063996a66dd36d8c3c6404e4ebefab75d5fd43a0643b3`  
		Last Modified: Tue, 04 Aug 2026 04:47:24 GMT  
		Size: 52.7 MB (52669146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:442bdd9b4e04ba1159cb758d7d964e348b12a1de3b0c30bf9336cdb23ba74f5d`  
		Last Modified: Tue, 04 Aug 2026 04:47:25 GMT  
		Size: 72.5 MB (72486906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44c2af539e34e6b1b823d259af8c4881edae0b1ea1dce5d7996eae119f079614`  
		Last Modified: Tue, 04 Aug 2026 04:47:22 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6a9ea6ec0ed29dcb6d098a59370975a05a33f5fa9005ff7b9a38430ccf3a2b06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5254598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfc2b755905df9707793573b0bd186f41263dd60a301892c5d6fb7050c472042`

```dockerfile
```

-	Layers:
	-	`sha256:fe229210d85f913dba93c0c951ab46428dbacdb8a8328d3e5aaa4f32fa369502`  
		Last Modified: Tue, 04 Aug 2026 04:47:22 GMT  
		Size: 5.2 MB (5240148 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f2191fee371aabaefdf8871fc8f77de5bd79a1e7b9bba18981945ddcca49a72`  
		Last Modified: Tue, 04 Aug 2026 04:47:22 GMT  
		Size: 14.4 KB (14450 bytes)  
		MIME: application/vnd.in-toto+json
