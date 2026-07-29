## `clojure:temurin-25-tools-deps-1.12.5.1664-bookworm-slim`

```console
$ docker pull clojure@sha256:a8f2d77854877c32f6d921021925e3866a2541f982c8a42f786a7f385d7cdb67
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

### `clojure:temurin-25-tools-deps-1.12.5.1664-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:6f434a45e0187442ae9f75750cd2b5b25ddf3a9e45fd730c12a0c7b80a6f0160
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.5 MB (187465051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd35637bab63b1668d3ad1e4a8dc685f2741770b054aa8689d35edd564824bf6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 17:57:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 17:57:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 17:57:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 17:57:17 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 17:57:17 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 17:57:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 17:57:31 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 17:57:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 17:57:31 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 17:57:31 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:874ecbce61e2ca4e291818c62959796e11a024d5d3308f43f43fe00adadd4407`  
		Last Modified: Wed, 29 Jul 2026 17:57:51 GMT  
		Size: 92.6 MB (92574597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15e0a01338396de20446a93b1333e4ae992065bcdc43787814cdc6c60fc486d0`  
		Last Modified: Wed, 29 Jul 2026 17:57:51 GMT  
		Size: 66.7 MB (66656767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f92ac05989e3c175a5be2d7fb7c51fd26fefc8d213e830e9badad0410f3be77e`  
		Last Modified: Wed, 29 Jul 2026 17:57:48 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43e661c62f56ea3ba42d6e8b25ea84412407e64d6cd81da202aea49bb499fabe`  
		Last Modified: Wed, 29 Jul 2026 17:57:48 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.5.1664-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e83dfbac307176dc5ce05a190a8c970c04668018411b9b27ca49e65a8c8d4874
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5098803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:206b6433704bb3620cea70ba6dda6cc89162e8e3ab4d380b7d5138cea4fc1947`

```dockerfile
```

-	Layers:
	-	`sha256:5845dab5968d4c45ef7ddee016e3fef5fd34710e2b7692f3c75afd9671762613`  
		Last Modified: Wed, 29 Jul 2026 17:57:49 GMT  
		Size: 5.1 MB (5082125 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:822140ff1e2c78f312a33961d5a4f48db29cbd3cd72c0cdda66446316e07383d`  
		Last Modified: Wed, 29 Jul 2026 17:57:48 GMT  
		Size: 16.7 KB (16678 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.5.1664-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:acd11ab09d2ed91b0f2176790f469738a8a779b721de47951404562b38fc007f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.3 MB (186308916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12405a08eb1607199b511a28eee2dd567926c561a4a78e7e30f0000030afd695`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 18:05:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:05:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:05:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:05:52 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:05:52 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:06:06 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:06:06 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:06:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:06:06 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:06:06 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea623bf2872a5534fe4d2f50b51c4f210acbeef893e87ff3f2ff9cd5df52d295`  
		Last Modified: Wed, 29 Jul 2026 18:06:27 GMT  
		Size: 91.5 MB (91542228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:340a0b945b9e73ba026493a972ef68eaa6ea9deea39f3399e93e63aed32010f1`  
		Last Modified: Wed, 29 Jul 2026 18:06:27 GMT  
		Size: 66.6 MB (66648390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8ff27ac99c6a3e861696cb733c14628cc05318d74e270fe7f82992f53209581`  
		Last Modified: Wed, 29 Jul 2026 18:06:24 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9cb365fe2bd28402fc965c0b4a285cb180f1166e77db87c594bca2dd09076b8`  
		Last Modified: Wed, 29 Jul 2026 18:06:24 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.5.1664-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a6c24fa17405786b9e99fd0f1aaded0459117e7ad5cff4369ed650b6e17d78d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5104728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56c9e3999d3ee55cb9fb2b4754c7ef68749f41d481baecfbc525086b0d2a8419`

```dockerfile
```

-	Layers:
	-	`sha256:35a95a2a0f08e6e20da470d090f95436dd115bbb4343146fa970cdd5dd6fd1cd`  
		Last Modified: Wed, 29 Jul 2026 18:06:24 GMT  
		Size: 5.1 MB (5087907 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4b978cdd73fe4afa1d66f997b73c41b1345dc16a0710993da28cde92c866d96`  
		Last Modified: Wed, 29 Jul 2026 18:06:24 GMT  
		Size: 16.8 KB (16821 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.5.1664-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:473e900ae0a271bcdf94d6569d437c8316cf6e083cc8e402b01a086d51b3a13a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.5 MB (196478138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad317264aee0706fe7d9db32a67bb432bf5aa6348d924e35656a0f233f37f5ec`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 18:12:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:12:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:12:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:12:08 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:12:09 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:12:48 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:12:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:12:49 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:12:49 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:12:49 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:176965d2f6912cb947d8e48e35424bda1591ae4eff9fc8aece9741589af0c8bc`  
		Last Modified: Wed, 29 Jul 2026 18:13:37 GMT  
		Size: 91.9 MB (91914040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f60c676a817ecef009795b62f364f20b3fcca321a0003ddae635d64b2adf246`  
		Last Modified: Wed, 29 Jul 2026 18:13:37 GMT  
		Size: 72.5 MB (72486641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:678a93fcf8a72cd1d11a4c19d848e97a92c4253835ff3876d678e396632f7144`  
		Last Modified: Wed, 29 Jul 2026 18:13:33 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01009bcc5614be1fdc744d9aff9261559a734051c3381e9d3ea26dfaf9f0c0e8`  
		Last Modified: Wed, 29 Jul 2026 18:13:34 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.5.1664-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:89e0122b16b782e4d05f7a3c6b43c2d4dda161bc69f894a512b2ffd9a45e001c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5087345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:005fd91f6721dc91c55123233f49d99c573d4120e93a52eeb00c048ab1686393`

```dockerfile
```

-	Layers:
	-	`sha256:f3bb402c8add4071b87b675c34abc8505d73825acb5728babedfdb71c02af1ff`  
		Last Modified: Wed, 29 Jul 2026 18:13:34 GMT  
		Size: 5.1 MB (5070607 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f74cb1d760615116fd839aace44d544c5b2463596580c67f43a4cbdc26df51d`  
		Last Modified: Wed, 29 Jul 2026 18:13:33 GMT  
		Size: 16.7 KB (16738 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.5.1664-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:16a2ae2cc995a00c8ceb20d8aefd32b6f9c84a02d6118ff5d276a2ceb445ae9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.8 MB (180765850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2ab431a7dbb5e557271237ade074495372b3835230b2fd403c30c10e02587be`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 18:23:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:23:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:23:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:23:11 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:23:11 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:23:27 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:23:27 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:23:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:23:27 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:23:27 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76f5f011fd21898124324df9f91fd360885932826162e78baefadd149e2d82ca`  
		Last Modified: Wed, 29 Jul 2026 18:23:58 GMT  
		Size: 88.4 MB (88420359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f047520601504c690db91fefe1894bd794bb21844f9613c99dc9b226b5be2e4`  
		Last Modified: Wed, 29 Jul 2026 18:23:58 GMT  
		Size: 65.5 MB (65456181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e87bae7314978e625208239bf9dfcc6c3b927d300b8b8e49d07599aa0dd03dc3`  
		Last Modified: Wed, 29 Jul 2026 18:23:55 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a485b8fd0fba32755c5b4f345c3c9d2b3dc8de9a61796242181dd449d34e430`  
		Last Modified: Wed, 29 Jul 2026 18:23:55 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.5.1664-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:bdda4e5b3c1a2d744e301213fb6420ba1af58d39a4cc45f2dfa70b9d6778f769
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5074687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85682884c2039f9a10ea0dc313ff1670562ca3872e96d7e7f2a17bee1fabb76d`

```dockerfile
```

-	Layers:
	-	`sha256:a6769ab59a8941ac65b21b7218426c6385837760eeaf9201ffd55cc838db9dfc`  
		Last Modified: Wed, 29 Jul 2026 18:23:56 GMT  
		Size: 5.1 MB (5058008 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e0fa429bd1c1d0d5afded56d24632668d735d8f514722a339904dec62ec112fa`  
		Last Modified: Wed, 29 Jul 2026 18:23:55 GMT  
		Size: 16.7 KB (16679 bytes)  
		MIME: application/vnd.in-toto+json
