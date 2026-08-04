## `clojure:temurin-26-tools-deps-1.12.5.1664-bookworm-slim`

```console
$ docker pull clojure@sha256:c975035e8efc19204f25c364d5b566237eb8d0dc165c5308f36666784e369948
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

### `clojure:temurin-26-tools-deps-1.12.5.1664-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:48632c3fa6ee834eef0409e3a4d1920194745392367f3a2871cf5b925ecf6ffd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.4 MB (189415003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acc7ff711fb6e5ee2713a33d44e09f82292e0dbe9fc95e9f38710c9130ba16c3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:55:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:55:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:55:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:55:49 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:55:49 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:56:02 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:56:02 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:56:02 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:56:02 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:56:02 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ab30054340705c6e799952ed6fbf183061cb4b5da586c2fad4f2625f04037ca`  
		Last Modified: Tue, 04 Aug 2026 02:56:23 GMT  
		Size: 94.5 MB (94524345 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:117dfa0809429310ba4579a64cf7c0e18c0462fa0237511b3185a80b831dd01a`  
		Last Modified: Tue, 04 Aug 2026 02:56:23 GMT  
		Size: 66.7 MB (66656974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:800948021ee10a37785dc2ba61e55168d097939d2a93ed515edcd1d71c9039f7`  
		Last Modified: Tue, 04 Aug 2026 02:56:20 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba529c460a10eb0bfae86446e78e70b9f5552fae4dd30763e970b9841e2d5392`  
		Last Modified: Tue, 04 Aug 2026 02:56:20 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1664-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f16935da0296df6b1b7f5a15508dc61b0b5bc9424f65e877d2d17f8f5e54867f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5094909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:524ff8a764ae8c49e5aa2a49a83a3dc1e16bbf555936feba5c4518a20f776f93`

```dockerfile
```

-	Layers:
	-	`sha256:400e259678445b27f662e808a7090ebbdfae276304c586b77c2d795b2c229656`  
		Last Modified: Tue, 04 Aug 2026 02:56:20 GMT  
		Size: 5.1 MB (5078926 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:48683c4b203f0b8147fba4ad24cce9974bdf3e773ceabcfa81773f9a8fab6524`  
		Last Modified: Tue, 04 Aug 2026 02:56:20 GMT  
		Size: 16.0 KB (15983 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.5.1664-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e4fc69cf3b556b1460d323626d75038c533ea75ab740792496f8a5eb5dd83211
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.3 MB (188271068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7efeb6a59fa65bc066c59db5f6c60c4c66a1b711245190844f4fb2e5277ee29c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:56:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:56:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:56:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:56:11 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:56:11 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:56:26 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:56:26 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:56:26 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:56:26 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:56:26 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3fd570adf0664beed788a9259a5d71eebe1a7256f593f1594d9954de6d77085`  
		Last Modified: Tue, 04 Aug 2026 02:56:49 GMT  
		Size: 93.5 MB (93504370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77de8470dca6afc9e81a247e559b3d4be32c7ca694923cb8f19f9bcc2c85a0c9`  
		Last Modified: Tue, 04 Aug 2026 02:56:49 GMT  
		Size: 66.6 MB (66648403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df3d148888fc8b9a2f0466c8ad1d95970ba3a00a612792e7d411f2249da1a83d`  
		Last Modified: Tue, 04 Aug 2026 02:56:45 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2ae06d737bf8cb61a49d6595161a2e920cbbc495188819ee31dd570e54cb59e`  
		Last Modified: Tue, 04 Aug 2026 02:56:45 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1664-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:43774b9185e0b9320f5a7109731702aee8b08d223de7972a556acfa582b2fd7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5100785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42c0fca88b617c5932641a1028709adb4607cd8def6c8ada3563cfea37cbe6ee`

```dockerfile
```

-	Layers:
	-	`sha256:2b786dbd1204dbc7b4068e6a663164a6c3fa5d07a4c7c6f6f8a21ce4d531da6e`  
		Last Modified: Tue, 04 Aug 2026 02:56:46 GMT  
		Size: 5.1 MB (5084684 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3db12ca5b536e5594870433771675a358645e198efa6b432ef09a9bb4766f2bd`  
		Last Modified: Tue, 04 Aug 2026 02:56:45 GMT  
		Size: 16.1 KB (16101 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.5.1664-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:954095fd12db696096f627b27289b01ace4c04d2753981ebec701ce9970a7881
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.5 MB (198466375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc5df1202979e32517575ee5df718ffa4a8b4349276e0a9c9cf0bcf08cbf003c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 18:17:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:17:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:17:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:17:43 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:17:43 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:18:20 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:18:21 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:18:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:18:21 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:18:21 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ac10dcb821f5dc6426b01dcc095828f98b83c73ca3dc3788b03a2c467fbd1e6`  
		Last Modified: Wed, 29 Jul 2026 18:19:05 GMT  
		Size: 93.9 MB (93902053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88ef51a94f785e5e0b8962630a81e3a122c85c0c8752d84ec90d1e3c72ccba19`  
		Last Modified: Wed, 29 Jul 2026 18:19:05 GMT  
		Size: 72.5 MB (72486869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4851cf67337794079714ea3a67b98366eb3c4b881b4da701542a0d2165f543e5`  
		Last Modified: Wed, 29 Jul 2026 18:19:01 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbd3b63f1ef1f0277ced6b3652abfc5db5a7ae3d190fc4749748be8284c5c159`  
		Last Modified: Wed, 29 Jul 2026 18:19:02 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1664-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:11793b066422f8ad758567d7bb8ce38573b7adab54503eeb7fa9a2475674afd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5084051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d87a22ea503e1a01a73311c7134b788dd95ac62211c6b206c39f397df32060d`

```dockerfile
```

-	Layers:
	-	`sha256:a6ca5ce483d98575b43818ba7b087fa4cc192d3bade08338ab33be1b78c0b7ac`  
		Last Modified: Wed, 29 Jul 2026 18:19:02 GMT  
		Size: 5.1 MB (5068020 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:022c8e830e3178d513d0edb058eb808b6f321284a12fbe0528fcfea3b02936da`  
		Last Modified: Wed, 29 Jul 2026 18:19:01 GMT  
		Size: 16.0 KB (16031 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.5.1664-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:e94a82f8bc1a03c1d7e16738b66fedce3d4bef0fecd75bc50d481b8ab6c9997c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.9 MB (182882357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a073e3c448ec5c357531b018707bd366b9546eeeeb69ff9a1f45c56a77ba86b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 03:07:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 03:07:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 03:07:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 03:07:22 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 03:07:22 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 03:07:36 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 03:07:36 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 03:07:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 03:07:36 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 03:07:36 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a64070c97d7376ffb8de185b5dc3efacc69399de070caeedecbfb4b13cf55a0`  
		Last Modified: Tue, 04 Aug 2026 03:08:04 GMT  
		Size: 90.5 MB (90536947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8fd6c71a1e37145251230037af4cb6cd86fbe00cf74fbd76dc1f912b97085e3`  
		Last Modified: Tue, 04 Aug 2026 03:08:04 GMT  
		Size: 65.5 MB (65456103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:113dac7b65dd5ffba180c3b6cc6e22574cdda7a70cc7d79bc37cd0b709b1d775`  
		Last Modified: Tue, 04 Aug 2026 03:08:02 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9be28d35524ddc7e8419b848325877bfc9e46d98c903ec8d7143fec9113942e4`  
		Last Modified: Tue, 04 Aug 2026 03:08:02 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1664-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:abc65f50e9ed5997df64cd9a2ea0390a4aead8c99270abcb9321a07a0080b693
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5071416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaca96e6d30f46eacc95a1b2d65d7c6bb1a5623efdd6aa549aa563daf748f1a1`

```dockerfile
```

-	Layers:
	-	`sha256:355c68b72ebc3fd8fcaf220fb2670328753645122a62d7dd4c64f74e1eacbfc1`  
		Last Modified: Tue, 04 Aug 2026 03:08:02 GMT  
		Size: 5.1 MB (5055433 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:18b573b58d9f8f532dcd430ced088a7f31d8681d06ffbf5abb5d5789a6d30345`  
		Last Modified: Tue, 04 Aug 2026 03:08:02 GMT  
		Size: 16.0 KB (15983 bytes)  
		MIME: application/vnd.in-toto+json
