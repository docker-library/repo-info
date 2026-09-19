## `clojure:temurin-26-tools-deps-bookworm-slim`

```console
$ docker pull clojure@sha256:783d7ae990d2d4d6cd2ad6b27847a4010992d10b4c6de3d316907fec9b34b041
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-tools-deps-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:4f15baf76dc02f98ff6402fb359a17462cfe99970fdfe98b4ea09e9aab79a941
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.5 MB (189488092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5409e2ba1e525fd96d581583d141914650dc645a56d4f0a0bdc7138959536197`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:18:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:18:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:18:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:18:23 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:18:23 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:18:37 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:18:37 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:18:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:18:37 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:18:37 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b8dec5b49304663a3f95d311e5da6c741877c34cfc3604a50ae91500bdc1d50`  
		Last Modified: Sat, 19 Sep 2026 01:18:59 GMT  
		Size: 94.6 MB (94563737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c50db7e566cd1fa320df658824979d2f7700c144a787cf80a4ecd2c422e0a494`  
		Last Modified: Sat, 19 Sep 2026 01:18:59 GMT  
		Size: 66.7 MB (66684875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e611779f2f2b0e6822580ae0a0371736ad89c536f27f85df2a00844d9f982985`  
		Last Modified: Sat, 19 Sep 2026 01:18:56 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e25c6b1fd26fa633c03c6dade3524e7eb98cc08533ca977939f98bbe4dcfb27`  
		Last Modified: Sat, 19 Sep 2026 01:18:56 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8ccf576b1c776d8cc2c7537d00f6ec2ec046c8304defb228c7b29fe3472b8203
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5100177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8b4078105f922961bacc497ab13d54d09cd9f212f7c91a439b91b88b8862a16`

```dockerfile
```

-	Layers:
	-	`sha256:26dfd9b89d96d94cbe9c0f8848c8a5cd87911d5e6900c0bca8f67d809534901c`  
		Last Modified: Sat, 19 Sep 2026 01:18:56 GMT  
		Size: 5.1 MB (5084195 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:983a047cf1664dde2b08ee68281225ed96cff2deeb58143338f1a6a358a04808`  
		Last Modified: Sat, 19 Sep 2026 01:18:56 GMT  
		Size: 16.0 KB (15982 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:b3b689af103ef1bafef9e3269073cc42916865fd42d631366d6962f5cf7647d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.3 MB (188349936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b66205c9d1e7b9028325d8761c6f599783a059b08597536b58b52cf2d5744b04`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:25:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:25:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:25:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:25:36 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:25:36 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:25:50 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:25:50 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:25:50 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:25:50 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:25:50 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:120ee570b021c8396dfcf4061560cfefc13db0d0298f761926547aa8bb3be8f9`  
		Last Modified: Sat, 19 Sep 2026 01:26:11 GMT  
		Size: 93.5 MB (93541602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d49609df6a121df3310b3df134000e3252a6aa9ea46ea5cecfc5f772d9f1f8d5`  
		Last Modified: Sat, 19 Sep 2026 01:26:11 GMT  
		Size: 66.7 MB (66683612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8a3997d7437f775cd885bdaed436b974fcf0b10b19854d0e888acc4cdf7754f`  
		Last Modified: Sat, 19 Sep 2026 01:26:08 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53ea0aeb70b94c822472e3b2898a6edfc7ecb814aadb0da5baa7c3864e643b2a`  
		Last Modified: Sat, 19 Sep 2026 01:26:08 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0508fb6fbfd3e01a60e9eb02e5c5e8589cdc50638070d5600e165e7885a46490
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5106054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49c17fe978edfc25842f00ffe7ecc0dafda298cf7ef106818ac06a2f206c0d46`

```dockerfile
```

-	Layers:
	-	`sha256:77ee6839899c0dc1f043ae30511c6f03f1709aefb264934a79be9f28a911b99c`  
		Last Modified: Sat, 19 Sep 2026 01:26:08 GMT  
		Size: 5.1 MB (5089953 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8b2ec9261d23bcc85d812a7d4c966459bc8d2fe3ad333ae48fcfd77fa0795d0`  
		Last Modified: Sat, 19 Sep 2026 01:26:08 GMT  
		Size: 16.1 KB (16101 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:d22b8d430cefdd23b761da40a3c62099de50e132aa27c308d25ce2f957495955
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.9 MB (197927278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dea6d2bae0c12746e02962893663216deabdd948d7380c7ffe65b327e6ca384a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:32:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:32:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:32:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:32:50 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:32:51 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:33:42 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:33:42 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:33:42 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:33:42 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:33:42 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7aa3e4fcb75b78de0549a83b157bf61da822bcd023735210fb72766eaa14cc64`  
		Last Modified: Mon, 24 Aug 2026 23:19:16 GMT  
		Size: 32.1 MB (32076477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76ca4b2377bd7f858a9eaa6c9fb71c0fc3007246e96523f3f7abc3de415ac8e4`  
		Last Modified: Fri, 04 Sep 2026 00:34:23 GMT  
		Size: 93.4 MB (93350808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6bc2f688e94a8ba60d62c4e6293c681d40291da723b7c5b6b3c5ada0d4c51e2`  
		Last Modified: Fri, 04 Sep 2026 00:34:23 GMT  
		Size: 72.5 MB (72498949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ccf8205c8ba1a63d7e998482fbf5d7c159ef86993dc8a41cf529bcf8967c905`  
		Last Modified: Fri, 04 Sep 2026 00:34:20 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:843c341ee67e761468388d0dd82ce78ffdca7cec6792546ee8fd59b9abc9fbde`  
		Last Modified: Fri, 04 Sep 2026 00:34:20 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ab398e10403cb462bbea5f5dbc052df0a870f27791d2b14a6464d343ab245ce7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5089255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b751ae069c456376b256cf5f4bfdf58fa52af90b8dce360f01e3232a47260bea`

```dockerfile
```

-	Layers:
	-	`sha256:bfc43eceec535f4ac6527e6cf938bf117961473f065ed579d82ea52cb13e5aaa`  
		Last Modified: Wed, 16 Sep 2026 11:02:43 GMT  
		Size: 5.1 MB (5073225 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:89724aea2d18a99e843a6c59527dc2da09e14bae8500aada884c8faeb13526f0`  
		Last Modified: Wed, 16 Sep 2026 11:02:42 GMT  
		Size: 16.0 KB (16030 bytes)  
		MIME: application/vnd.in-toto+json
