## `clojure:temurin-26-tools-deps-trixie`

```console
$ docker pull clojure@sha256:620a0acc1c177096a2d08f05e3c15c98a3dc57537c69de9f8cdf92bd4cb0988e
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

### `clojure:temurin-26-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:ae75436e4570c14a612794931c25e38f9a0382f6c57f91134051be9e752608f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.4 MB (226415997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10dafd01a7370817d0edeb50d5a7b93b903224d234382e107e40b7e96804bc78`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:22:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:22:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:22:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:22:25 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:22:25 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:24:28 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:24:28 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:24:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:24:28 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:24:28 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6805985e61b736cc811c48a191ef667766c09a6d9db89891b3cd62910f5281c8`  
		Last Modified: Fri, 21 Aug 2026 19:23:58 GMT  
		Size: 94.6 MB (94563729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5640b2ce0b1822c1a9ca8edbd36ffe7ede12e87c17c82bc8b7a8f24750a9f886`  
		Last Modified: Fri, 21 Aug 2026 19:24:46 GMT  
		Size: 82.5 MB (82538913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00afcd7420aca88e2bf55e4d5b11c2b9713057611b78a9bec39470de20c4de42`  
		Last Modified: Fri, 21 Aug 2026 19:24:44 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf559721f5693d53c5a4ae7e8f9fa64a0d5b18e6eda21eaff6fe96c704018f02`  
		Last Modified: Fri, 21 Aug 2026 19:24:44 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:008113f87cd3ba0bb6bbdf9b45ba9e1bd29132dc8096a44f9706e431b90fb37a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7448734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:923dba0bf0790a20f37c36224c48d83c0ae2bd6a5328ed4596d8f3daf71347e8`

```dockerfile
```

-	Layers:
	-	`sha256:4920416bdf960107a150ac6540d8843cdf1a1c05bf5cbc3f57cb24bf4a0f114b`  
		Last Modified: Fri, 21 Aug 2026 19:24:44 GMT  
		Size: 7.4 MB (7433786 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:141a2098a5a6142baa8b3de4546b5e19e813c030582e8dd71c561ad783246c09`  
		Last Modified: Fri, 21 Aug 2026 19:24:44 GMT  
		Size: 14.9 KB (14948 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:5e3454b33fc7ac4a9390d7d45410b7c75816b323e14739705054c8cd9c8cbc54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.6 MB (225576232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:565cc03df51aeefb2c1d6dacfadd41ce7a382644ac4a6ff30095309f1d7a5060`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:13:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:13:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:13:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:13:26 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:13:26 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:13:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:13:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:13:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:13:45 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:13:45 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81a76da4b6b42fea8c7f7a531ae92971edb1cbbb5cfad41efa979bbcc29b3fa2`  
		Last Modified: Fri, 21 Aug 2026 19:14:09 GMT  
		Size: 93.5 MB (93541567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaec37652625e8bdcd877f1ccd63cb13f39f21f0f204d1b2c1bb7955bd321d3a`  
		Last Modified: Fri, 21 Aug 2026 19:14:08 GMT  
		Size: 82.4 MB (82359780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1e4e8789d562c4762f83d7467ccc5d5d73eca2cb0f8bd5d71eb99f4b9f29569`  
		Last Modified: Fri, 21 Aug 2026 19:14:05 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b9a51578016b163bde913ca45d860b74993009542e68dd6350c30d9b4adab32`  
		Last Modified: Fri, 21 Aug 2026 19:14:05 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:aacce932b2dba3ad3bb7e33e6ab1e74d39c1d76e3866129fe5af6c1bac005c8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7456195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d464bf61a4526c8dc9e46f4fbf7bd7a00931e9413a4e75d8e43c01cd51f506b5`

```dockerfile
```

-	Layers:
	-	`sha256:787678e4fda06f355bb71ac8c02bb663adc9110c1f2aabf9db4ed61e00cfc50e`  
		Last Modified: Fri, 21 Aug 2026 19:14:06 GMT  
		Size: 7.4 MB (7440176 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5963692bfcd6d4f86713eac310d45d578893b94b791829e9eed4365790124f52`  
		Last Modified: Fri, 21 Aug 2026 19:14:05 GMT  
		Size: 16.0 KB (16019 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:3756a69015c0ae9e1400f455fe80f349d7a97febeca9180f96467bbdeb8dfe94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.0 MB (234987451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0593c246f0fe1539c882d216562a5f58261054b3bef48d1e10c904a93db715cb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Thu, 20 Aug 2026 01:46:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 01:46:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 01:46:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 01:46:03 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Thu, 20 Aug 2026 01:46:03 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 01:53:33 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 20 Aug 2026 01:53:33 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 20 Aug 2026 01:53:33 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 20 Aug 2026 01:53:33 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 20 Aug 2026 01:53:33 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b38465547e0d6eb6fc8951a86a8affc8d174d00b5c853df5d8c408aa9b46aad9`  
		Last Modified: Tue, 04 Aug 2026 23:53:11 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6395e4aa38eb4418bfb2def51491091fad5439adf70fdc769e990b260405c71e`  
		Last Modified: Thu, 20 Aug 2026 01:49:41 GMT  
		Size: 93.9 MB (93902043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f109f48bbb94e6b3976a1cac3e2e5db8d5cd1e5fdc5e2762fbf8bf4ec544b3a6`  
		Last Modified: Thu, 20 Aug 2026 01:54:10 GMT  
		Size: 88.0 MB (87950762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75edf5d07c5043ddab42e5a2fda8a47c625bb50777d596c35df0fb8f1a55d51a`  
		Last Modified: Thu, 20 Aug 2026 01:54:07 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36b95a193b2d82597348accca23ce6d8ae2d07cb6678a1e775bd4bb25050d451`  
		Last Modified: Thu, 20 Aug 2026 01:54:07 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:b56406c24f57f7cf97147654629112d2e361d0d20af1e93e86c2e6cd36ac93f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7438090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c37feb748acb91c3531c25d59a960156e5c98e9eadd01e2f7ea9485fb827519`

```dockerfile
```

-	Layers:
	-	`sha256:b209708c55c79f9a691aa830e0dd6b3ad30d1175838b1608c487c7910d3c4b9a`  
		Last Modified: Thu, 20 Aug 2026 01:54:08 GMT  
		Size: 7.4 MB (7422141 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b8e0331e8f71a59f1b63d203e820638d42d23aa35c257c56a6433e718fec8ab`  
		Last Modified: Thu, 20 Aug 2026 01:54:07 GMT  
		Size: 15.9 KB (15949 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:01acf90d71d2d3a297b752fd2f6cecda01a8f045a5d1cf9c7156cc61d969c49a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.5 MB (223490341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9338b220a9298c2fe69d2ab8303273fe930715c9f9ea1c5116ffd1e8612334a4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:14:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:14:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:14:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:14:28 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:14:28 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:14:43 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:14:43 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:14:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:14:43 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:14:43 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c6f9cbf321f2036050c3f44b5085f31b859670b833178a1da979db10f9ba6b15`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 49.4 MB (49381426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27cb92eb193b9c0d38b67fe505190cf3d4fdaff0f771b6c5b46ccfe9750c7d2c`  
		Last Modified: Fri, 21 Aug 2026 19:15:13 GMT  
		Size: 90.6 MB (90588201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0298df99e8f5024746300e55b73b3da2ba160ef0121d1fc1eef7f62fa8c69aaa`  
		Last Modified: Fri, 21 Aug 2026 19:15:13 GMT  
		Size: 83.5 MB (83519676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85c9b2da72319258f476bba09bf49194e5244e38126be7a83e4d8192024c0cc7`  
		Last Modified: Fri, 21 Aug 2026 19:15:10 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e214714ebb2735948b31443123510d2299e47453bd36192bb57ee57e2a51c2a`  
		Last Modified: Fri, 21 Aug 2026 19:15:10 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:c2ec2cb2e592af193d9a1bf7e00810879f756de54397742987b60d6bb47c880a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7430795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0387cce1cfc36d8de34a85959097aff321d82ded2e68f4efde5fc96cbb796e9d`

```dockerfile
```

-	Layers:
	-	`sha256:b93a326fce9620f5a250dc5f9be62f16cc987725e21ffee8d56094f627df83ab`  
		Last Modified: Fri, 21 Aug 2026 19:15:11 GMT  
		Size: 7.4 MB (7414894 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:303ffa891ad4d620b5fe1b30e6b90c758e92721767ee4ab9ddd1368564e6151c`  
		Last Modified: Fri, 21 Aug 2026 19:15:10 GMT  
		Size: 15.9 KB (15901 bytes)  
		MIME: application/vnd.in-toto+json
