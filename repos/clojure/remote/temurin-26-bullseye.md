## `clojure:temurin-26-bullseye`

```console
$ docker pull clojure@sha256:186042ff56565f006c845589176394375cf9df01cb05356099acd24fa7eba919
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-26-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:05dbc236ad5a31afad5436b3b7e25da02c7d5d2e75cc0ddf86faed2f05568941
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.8 MB (214820584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dc4fa728c2984c89af9fe1436194806534dcb9b14c1c87313bbad93707da334`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 01:26:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:26:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:26:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:26:04 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:26:04 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:26:17 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:26:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:26:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:26:17 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:26:17 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:accfb92e6c6ad5d206b68e1bfd8a6c2af4ae82f9b6cc6eafe49675a0655e0742`  
		Last Modified: Tue, 04 Aug 2026 23:52:03 GMT  
		Size: 53.8 MB (53777019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:131d3fdf0613e2fdf48fae225d466273d8e385292424bc8283cda65e5ae00a71`  
		Last Modified: Wed, 05 Aug 2026 01:26:41 GMT  
		Size: 94.5 MB (94524335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2f466a65b37797344a5752f5f99788eed4a2c84b62e43f78c38cf0c673b20c0`  
		Last Modified: Wed, 05 Aug 2026 01:26:40 GMT  
		Size: 66.5 MB (66518191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa46c6f87a877a24cee62019b871c8ff2e1eb987999edf55895cff9ec41d7d29`  
		Last Modified: Wed, 05 Aug 2026 01:26:37 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:868a594f167c7d35312df95298531a5ff775fcb9fa33e7c21f15d8917cdb69c2`  
		Last Modified: Wed, 05 Aug 2026 01:26:37 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:b860576d8c8420e451d78c0fc66c3e1090d0c87e207413b97f3fc906c9a5397b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7386265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fea342f922b3c06d4a91d4e86e940f636dafe52d8cd74ce4aa92f4fe444b8787`

```dockerfile
```

-	Layers:
	-	`sha256:b449690f97a05091fe2ca3aa01d4c7272699acdc5d30056b429ffe26fc5efbb8`  
		Last Modified: Wed, 05 Aug 2026 01:26:38 GMT  
		Size: 7.4 MB (7370340 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c7012ec542f666894e92d59af90410b9436540ec037bd2a1e7fc23cd497029f`  
		Last Modified: Wed, 05 Aug 2026 01:26:37 GMT  
		Size: 15.9 KB (15925 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:94c1d3ddb9210a027b758f196faf41bdc4a661d8b2f8369a940f202c356bfe7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.5 MB (212451620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93f76463d25632f880160577a13e0300072356a3a6ffff76838004c5080c264b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 01:32:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:32:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:32:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:32:30 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:32:30 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:32:44 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:32:44 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:32:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:32:44 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:32:44 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3086cf1958fe5793d805c40e074e8662fbe7bb02df60f5a5dc95718602f4d4e0`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 52.3 MB (52260902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fedecfc932d8ff5ec54ea45e15264962a532336a96df1a69b221f64345b51629`  
		Last Modified: Wed, 05 Aug 2026 01:33:07 GMT  
		Size: 93.5 MB (93504346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a351d1c8cc029eb427320b215e8fb1e56b0d4834262f62e8c9722794b19189e2`  
		Last Modified: Wed, 05 Aug 2026 01:33:06 GMT  
		Size: 66.7 MB (66685331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2e9f8b53c5a8d67791e5e07323bf21dc2c712e9d5f1cd231e4040b71794730b`  
		Last Modified: Wed, 05 Aug 2026 01:33:04 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5edf9ba44939adf8bc865f0bef0e8cfdf23e09eba4773059ef130d216fc5847c`  
		Last Modified: Wed, 05 Aug 2026 01:33:04 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:674f4d44b706a76e0897d2b2ec2f0121f43d29ae25c1ab02a2f1fc0c2ea2eec1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7391478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a8f181c6c10a762f886d4ca3e4155ba858c062c92610fba3c72bca441d5077a`

```dockerfile
```

-	Layers:
	-	`sha256:61de34b62681294dd544c6949293349f4cacfbe0dd0d4ab890c9c4839cc2623e`  
		Last Modified: Wed, 05 Aug 2026 01:33:04 GMT  
		Size: 7.4 MB (7375436 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:609e71048a77310a9470bd2ccde70dcd7e69136fd17d0acae6f4c98066159585`  
		Last Modified: Wed, 05 Aug 2026 01:33:03 GMT  
		Size: 16.0 KB (16042 bytes)  
		MIME: application/vnd.in-toto+json
