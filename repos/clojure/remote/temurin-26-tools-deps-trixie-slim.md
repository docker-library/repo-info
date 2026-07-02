## `clojure:temurin-26-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:19c2332ea001bad12e914f6c39b4df5024d4f6dd49995e37737962d7cf8b8332
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

### `clojure:temurin-26-tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:d77f0c39c3a49111ec40f54946ad4bb6bdc64f89a15be0882d7dea1c269a525d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.3 MB (193261999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f8871ffc8e413d1ca5eb867a4b8037349e0cfa0c392d3460576383d90137a3e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:57:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:57:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:57:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:57:54 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:57:54 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:58:10 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:58:10 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:58:10 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:58:10 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:58:10 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2aef019ecae2c0ded0625be533f1a710e7ab15633b1b1c69585b5562cb894141`  
		Last Modified: Thu, 02 Jul 2026 05:58:33 GMT  
		Size: 94.5 MB (94524296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4ed6b1a3ad74ed39df87a2c5af2d5ae2b2085bf8aa317b89181df8d41f5488d`  
		Last Modified: Thu, 02 Jul 2026 05:58:32 GMT  
		Size: 69.0 MB (68951241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ddbe61d9b6ec2655b0fcdc73092ce3474d951de77ef36d1dc135e64fc864b50`  
		Last Modified: Thu, 02 Jul 2026 05:58:29 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f20a7c93ddceef2d1eb709bfaf5f8d02f07703e7d715954f5064c1f9896808f`  
		Last Modified: Thu, 02 Jul 2026 05:58:29 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:060e10afcb7e916dd32032d7eaae113695656a901e61a6604186a197254f217b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5238128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3a0e70d474118548ac5cd2ccb8e412a1acb6c4b3dd665370bb2ee2b66338327`

```dockerfile
```

-	Layers:
	-	`sha256:a647b149b4ebdd635107be754a562057a6a9c2558baaa470cdc3db846e1539ca`  
		Last Modified: Thu, 02 Jul 2026 05:58:29 GMT  
		Size: 5.2 MB (5222169 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:480c1fc0bf9a76a7fa59fa5c60608c110b4aea089450e5fdc7965aa7119efdce`  
		Last Modified: Thu, 02 Jul 2026 05:58:29 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:f30ce243d00605ff66bc15ec40174204746a62c813d99374553c6362973e711e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.4 MB (192431596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfb119e962b2ce3eb995e74e08a4ef8427943a57a4a73e8605e9d2d826cddc35`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:58:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:58:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:58:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:58:01 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:58:01 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:58:19 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:58:19 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:58:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:58:19 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:58:19 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b29fcf684ce2656e88f0d37fbcb07a278faee66f96edcf2b10d5e363b9966d7c`  
		Last Modified: Thu, 02 Jul 2026 05:58:42 GMT  
		Size: 93.5 MB (93504357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a78961e053c053973e7a063a325f6260b0bc2c666c915807bd61959086a8f16a`  
		Last Modified: Thu, 02 Jul 2026 05:58:42 GMT  
		Size: 68.8 MB (68777645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc311290edaf78c7d94951acd86e3b9ef350fd37f3922cac1bb0151015f520a5`  
		Last Modified: Thu, 02 Jul 2026 05:58:39 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aed18203c6a4304a0f67c757ceb0d12348fea1a0866259a2afb8591a3af1fdb`  
		Last Modified: Thu, 02 Jul 2026 05:58:38 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5506b28ed7467968791614941f10cec6c8bc7a84fb6843ddc77c725515dbbddb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5244004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f00fce7baf860d9115c7c0e15d15d668a0d134f4247b143ef5bf4498a87fda8`

```dockerfile
```

-	Layers:
	-	`sha256:53e8fabd774384e65677ac8f1f2cfaa312bb6f63c4e89bfe3eac9c2794bdd877`  
		Last Modified: Thu, 02 Jul 2026 05:58:39 GMT  
		Size: 5.2 MB (5227927 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f949d16a34bdd9fb82a4be19a6b5bc40c1f5faf296fbd72d835483a40d54864`  
		Last Modified: Thu, 02 Jul 2026 05:58:38 GMT  
		Size: 16.1 KB (16077 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:eca76da3e753ef00b983b7f1def3fe4490e3f9bdcd763cdccf1b1570680dc9d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.9 MB (201879587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90ab4c8eebb5f1a1e45befb8b440203f3d1f92efca29bf5a536ed2d1381e7294`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 07:52:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 07:52:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 07:52:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 07:52:18 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 07:52:18 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:58:34 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 07:58:34 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 07:58:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 07:58:35 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 07:58:35 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:078487ca4213252e4881f7cc327dd4300ca348cc226eceff71c9989d78521701`  
		Last Modified: Thu, 02 Jul 2026 07:55:55 GMT  
		Size: 93.9 MB (93902051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:185499d4b76b4fd59460f009bedeb96d55461b94468f41cd7baadfe9e3809bb0`  
		Last Modified: Thu, 02 Jul 2026 07:59:13 GMT  
		Size: 74.4 MB (74370102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:655b5e10859c805b3fdfd660fe0819afc841a6cb46ce1bf6e26e907c2ce9f949`  
		Last Modified: Thu, 02 Jul 2026 07:59:10 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f56389403933f476554ca0787222340ad8c19c6427354cc52a1c76d5d72f7362`  
		Last Modified: Thu, 02 Jul 2026 07:59:10 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:49e9e581c0465073ccc18a751785f82cea2f84599eb5582f0e4ea7090c17a6b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5226483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18470fe3b8c49ff38de3845087a36acd5b3582a00efee60ca2cb7b217b587bc5`

```dockerfile
```

-	Layers:
	-	`sha256:8424dcdc5f6a5123665738fc2ffdfe8a2d94600a04b0b24dca92639b40d88dfe`  
		Last Modified: Thu, 02 Jul 2026 07:59:11 GMT  
		Size: 5.2 MB (5210476 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39dfee48da88da060a722e001d421702fd36e65dd18c1e360da347c2ed1f54a3`  
		Last Modified: Thu, 02 Jul 2026 07:59:10 GMT  
		Size: 16.0 KB (16007 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:f8c225f912444246f6b564477df797248f2e9c54e6ded64ef31f567778ab7853
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.3 MB (190321687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:226dffb9d94bd9c742122174a1bd01615c52962621aa14da2273ee10f4739fa4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 06:02:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 06:02:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 06:02:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:02:02 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 06:02:02 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 06:02:17 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 06:02:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 06:02:18 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 06:02:18 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 06:02:18 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2f8c976d6b2d06924cd2cf2f5d7be56f9930b768b34e021fde640d44f92e394`  
		Last Modified: Thu, 02 Jul 2026 06:02:46 GMT  
		Size: 90.5 MB (90536963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9759b33d87003e1e2982f9f9488d3e8bd69dc544c0e59b007f8aa051cc8c54f`  
		Last Modified: Thu, 02 Jul 2026 06:02:45 GMT  
		Size: 69.9 MB (69932299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a75d1921be0b3bb5ac0665aa4fe238968bfd39de91fb1a6bb9ee8c7dfa7453f`  
		Last Modified: Thu, 02 Jul 2026 06:02:43 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fa89edf3dcc6b877ef4df52c5bebd768e87ee97ef7f56f44f273c92240a3a40`  
		Last Modified: Thu, 02 Jul 2026 06:02:43 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0fefb38b86aadb3f286af5c4a5d515712835b43104196fd7e5a54f13a4702c71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5219238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a67e73a2aebe828112ef095b620d7353bea4c11b63bbce7ac5bd88aeb99a94d`

```dockerfile
```

-	Layers:
	-	`sha256:b514880f385c6c1c4957387fc6dc6aa92add88756c7899a9cc2e94411bedc422`  
		Last Modified: Thu, 02 Jul 2026 06:02:43 GMT  
		Size: 5.2 MB (5203279 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9151577449e2607f771bb82233097bc67ef7d4bc218d08dd0a2d0ca034516dd3`  
		Last Modified: Thu, 02 Jul 2026 06:02:44 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json
