## `clojure:temurin-21-tools-deps-1.12.6.1673-trixie`

```console
$ docker pull clojure@sha256:d3de5af90bd262278b7dfca840461839cfb3347daabc144cdec2e1aeb42adb43
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-1.12.6.1673-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:a95a56ff6fa48a71d76c0d87ef39db533003fb2e45457f40e2b4c7f05ba470ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.9 MB (295941695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b0b49b757f990939dac02f294df0d6cecd9276906c09f13eb3fd784cf59f900`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 04:36:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:36:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:36:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:36:07 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 04:36:07 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:36:25 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 04:36:25 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 04:36:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:36:25 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:36:25 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c4a4d6f09d472cdfed9180a809799da5728ae744b7cd2a0ac9e6fdb484433d4`  
		Last Modified: Wed, 16 Sep 2026 04:36:49 GMT  
		Size: 158.1 MB (158120306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10aa00ce22a5b21ef77a54640fa6f9137507bd7f7c39fd6aa86656448969b11c`  
		Last Modified: Wed, 16 Sep 2026 04:36:48 GMT  
		Size: 88.5 MB (88482518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9527c1974d39fb3f8e7b5541fc3e9739436ad79029f17760707a3460626b6012`  
		Last Modified: Wed, 16 Sep 2026 04:36:43 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1c765e3cc5a61bc40a795b6e76b53f81ad64ce03621499f74639c92a644656b`  
		Last Modified: Wed, 16 Sep 2026 04:36:43 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:8bd4a10b552291964ee5a8657dd34b71efccedb7e4a3b9fe563cd84f4a4cafbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7491701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:159ae312a200f4c562cca59949f23eae2c2aea84a63464e8d322d68a2ebd1fb9`

```dockerfile
```

-	Layers:
	-	`sha256:70a3bb16754019f044fc73a7367b861946733c31e93a022e3af0862632dd7322`  
		Last Modified: Wed, 16 Sep 2026 04:36:44 GMT  
		Size: 7.5 MB (7475793 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7265596bb346cf5860f3bc39472476aa9fac49f0e1ca3fce0f84b839d28acb6a`  
		Last Modified: Wed, 16 Sep 2026 04:36:43 GMT  
		Size: 15.9 KB (15908 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.6.1673-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:48a01de82cd0fdd4601f03a6047f0bc05f68a2cdacd8d91e257992c830a7f013
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.5 MB (288541163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:186170be828bceed7f98281916ee83d75e14fa0e700663e54e0d28e2676a7231`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:23:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:23:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:23:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:23:30 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:23:30 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:23:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:23:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:23:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:23:47 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:23:47 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61890af0ffae9489144c69f6c05d5b8e8efef05fbd66df8947ed0eae878da672`  
		Last Modified: Sat, 19 Sep 2026 01:24:13 GMT  
		Size: 156.4 MB (156401946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dd57f11312b4c90042da65e74e0804d313bd73508e1a098b1edee54f314be7e`  
		Last Modified: Sat, 19 Sep 2026 01:24:12 GMT  
		Size: 82.4 MB (82389342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a58b35b21b75d9e59f5eadfa94cc0ec0383d2a8fea2c278b50c58f63ae1460a`  
		Last Modified: Sat, 19 Sep 2026 01:24:08 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c73070332fc66243ea9de6b3b753de4818a51ada066084fbe32c22f80f6aafd`  
		Last Modified: Sat, 19 Sep 2026 01:24:08 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:4d772051530805ae99a5488458db07beb6d5593f0c035ec04d58d628fc007008
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7503083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37f4b31417404ee549213e45691b9b50f8daea0f99b1aa08e66ce976d3f72327`

```dockerfile
```

-	Layers:
	-	`sha256:0b18179005588a1391ade6c3ad09c55569f2034cb3e2d0b51f0e91e0a65fcddc`  
		Last Modified: Sat, 19 Sep 2026 01:24:08 GMT  
		Size: 7.5 MB (7487057 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fc25b5ffb7a426a00246e9cf2273634c869aa7ef8703a5058be7d199a7b1c629`  
		Last Modified: Sat, 19 Sep 2026 01:24:08 GMT  
		Size: 16.0 KB (16026 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.6.1673-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:05056e7e46099f40393ab108c67135a845732b2801ab1d66521a7f32a22b7e01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.2 MB (303156945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1d11a704f56934231256f0b9e24bd4693f6cbeecf26a4708c1d17553834ebfa`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:24:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:24:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:24:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:24:31 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:24:32 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:25:33 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:25:38 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:25:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:25:39 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:25:39 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:287354e4c6ec2cae513d4cbacde250853a1371b3e972277d907395058c66553b`  
		Last Modified: Fri, 04 Sep 2026 00:26:22 GMT  
		Size: 158.3 MB (158274892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62b846aa1037bcc14aa3dae0e19a7b57cb8145cc608a6b54e2c37f603b810fd4`  
		Last Modified: Fri, 04 Sep 2026 00:26:22 GMT  
		Size: 91.7 MB (91716725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:283bcb980e4ec2e828452fc4aef292abdab0993c317b4c585090757212235ff7`  
		Last Modified: Fri, 04 Sep 2026 00:26:18 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a239143c0c0c7a180363ae3463d69b1b7855d2062493da9ab46ad281fa53bf9`  
		Last Modified: Fri, 04 Sep 2026 00:26:18 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:3450f7516b7889f2c4e522ebb2e79ecd3df64bd0222adf412411f0bc7bdaa54e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7496098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a801d27942657c6c8dc7db0b7cb3740bca0ffd0af2a882039972635158338312`

```dockerfile
```

-	Layers:
	-	`sha256:5d8e6c6b369a5e68da8ad5c3df0fdef5a60bf560f9bd364ff820190bb992d44a`  
		Last Modified: Wed, 16 Sep 2026 10:54:53 GMT  
		Size: 7.5 MB (7480142 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1832526b6626572b7a2ac8dad3bd19ddf137aeb3ab26698e898effaf3fb7128`  
		Last Modified: Wed, 16 Sep 2026 10:54:53 GMT  
		Size: 16.0 KB (15956 bytes)  
		MIME: application/vnd.in-toto+json
