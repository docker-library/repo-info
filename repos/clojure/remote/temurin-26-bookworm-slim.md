## `clojure:temurin-26-bookworm-slim`

```console
$ docker pull clojure@sha256:7a097944aba6db1dc7504ad9366e313eb421823819218262e9a6222587151070
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

### `clojure:temurin-26-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:68d151bde56e5c1d9c9c2b49a04ea11afc52ef24216fcc7d71c70dceeeac60b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.4 MB (189415365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab81d4bea9db2300be3ecbafa9eb7fb9e061e1da8347f9744cef549e82eea63d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 17:57:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 17:57:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 17:57:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 17:57:58 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 17:57:58 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 17:58:14 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 17:58:14 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 17:58:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 17:58:14 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 17:58:14 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3bb528731770bd3cdff7be2951dcc63dec6b44232baabbd66a884d7e877c82d`  
		Last Modified: Wed, 29 Jul 2026 17:58:34 GMT  
		Size: 94.5 MB (94524321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de983c19088f21d887daf64915e0c2ed5b26f1042257c563bd264adb2bd69da3`  
		Last Modified: Wed, 29 Jul 2026 17:58:34 GMT  
		Size: 66.7 MB (66657356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1dfaadf8d0f4457fcbe2cb521fce70b636cf43a0fea5660ab37aca9d2bb7971`  
		Last Modified: Wed, 29 Jul 2026 17:58:31 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24b4186d447deb3430a2292ef464a11a4a2f37e0f14f4de0ac2ed6ee1bae8024`  
		Last Modified: Wed, 29 Jul 2026 17:58:31 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e47c64c550abca692cbc388e77791c5dcc14a05447d28b7267efc9caa9331e80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5094909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d0e9671b4a16565c9f048d20a9e58bf2c9cb6dec547f1ebe108107f8ca311a4`

```dockerfile
```

-	Layers:
	-	`sha256:401fd6eb6fd6239da0a11e197980ba19f58d8429b2e49979c9a1cfd8cf0ef45b`  
		Last Modified: Wed, 29 Jul 2026 17:58:31 GMT  
		Size: 5.1 MB (5078926 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:21d513f351edc75f77ec7d600a2b723ceeca9a34be4e0e0e71a8493ba5ad6f4c`  
		Last Modified: Wed, 29 Jul 2026 17:58:30 GMT  
		Size: 16.0 KB (15983 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:02be51420d4602a83d16462d292886e56030cb3dc7257f85e6f16f4bd695c0ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.3 MB (188270956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d54b92681d921988769afd35ef4b11a507cffd3f7fa6b9aa86f658fbe6c00618`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 18:06:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:06:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:06:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:06:34 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:06:34 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:06:49 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:06:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:06:49 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:06:49 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:06:49 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce26d3be435e349bfa74e09861c70e843f10b4843610e7aeca7a0d12332f47a6`  
		Last Modified: Wed, 29 Jul 2026 18:07:11 GMT  
		Size: 93.5 MB (93504310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14f72820dea1033e713f1b7fa55758395a872d0ee90c38e9087a53191552716c`  
		Last Modified: Wed, 29 Jul 2026 18:07:11 GMT  
		Size: 66.6 MB (66648350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:971add80b477b5fae6aac0a3ac53afb75c6c6c5227026b7384bb7c8d2b35a27f`  
		Last Modified: Wed, 29 Jul 2026 18:07:07 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8f37ee1556296c2c98b4673c582709d2421fb32573501430747764cc9d73dff`  
		Last Modified: Wed, 29 Jul 2026 18:07:07 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5e6823d87a88b56c73b6a274f2b4af416d727d613f7b5bef1e8e51effda6e1db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5100785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6104bb683230cb889dbde65739f2f26086c03d3cc28eb62c2fe003cd631d5ff`

```dockerfile
```

-	Layers:
	-	`sha256:a032919784286c80ca9ab62b884094b53a76b7b056b0ac96401a27254c667778`  
		Last Modified: Wed, 29 Jul 2026 18:07:07 GMT  
		Size: 5.1 MB (5084684 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b11f1cd140cf3e8cae32d79afd9dab54ee4c3e8845bdf742cb3a0e15007ffd8`  
		Last Modified: Wed, 29 Jul 2026 18:07:07 GMT  
		Size: 16.1 KB (16101 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-bookworm-slim` - linux; ppc64le

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

### `clojure:temurin-26-bookworm-slim` - unknown; unknown

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

### `clojure:temurin-26-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:b7841c4936ad57ed16f34533f091807708012455bbb2173e95e8a3d4a0d764e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.9 MB (182882556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c0dc4196f1c77a05471464ae0ca9c57299d3a1a7446c3ae4605e3da613a42a1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 18:24:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:24:42 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:24:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:42 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:24:43 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:25:00 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:25:00 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:25:00 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:25:00 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:25:00 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:512045bdd2618da32e3548fced7b1c4dee60216fe477dc7c9e10e5ded58e8a81`  
		Last Modified: Wed, 29 Jul 2026 18:25:33 GMT  
		Size: 90.5 MB (90536958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ce1ce1b81cd71135403ec7f46f49b7d0c40c32199402d871443bb94cdecbfa3`  
		Last Modified: Wed, 29 Jul 2026 18:25:32 GMT  
		Size: 65.5 MB (65456287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae8c636cb0face8b46fcf1345f6edd3e94b33dff1b19fd0a4cecc6bcec2545d5`  
		Last Modified: Wed, 29 Jul 2026 18:25:30 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:638f3539b3d3b0dae0f559b6f76b5c6bb9b87da7e36c3420c778fb637e30edec`  
		Last Modified: Wed, 29 Jul 2026 18:25:30 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:db92677cff402444c261249251c6fb1f23b7f197461617bdefa55360ad374b98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5071415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b0b192f3830c27c4fd452c510e297acd9d23f595f186ce3cbe5d5cdb4b72247`

```dockerfile
```

-	Layers:
	-	`sha256:d2ed8cad586ebddea7f53c45eb8938c761932635b9e5da773ef046d461972759`  
		Last Modified: Wed, 29 Jul 2026 18:25:30 GMT  
		Size: 5.1 MB (5055433 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb951ba6d3783517940e5469ecc6a9d9897f4970b6923418c38b9b4a6ebd1c9d`  
		Last Modified: Wed, 29 Jul 2026 18:25:30 GMT  
		Size: 16.0 KB (15982 bytes)  
		MIME: application/vnd.in-toto+json
