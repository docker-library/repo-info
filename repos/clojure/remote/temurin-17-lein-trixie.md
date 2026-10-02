## `clojure:temurin-17-lein-trixie`

```console
$ docker pull clojure@sha256:9e0f48d08b6dbe02aef7f1d1c810bcf5ae862a2393fa77c6b4382020bff9c766
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:9857e451754068c1d1a391661541946bf76116fc95a0beda5a2c0463717716ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.6 MB (221601074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f8e7bb2ed50bd136d796fc518cad9fc89c317abcc1562fee4dd62731221af07`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 02:45:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:45:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:45:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:45:20 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 02 Oct 2026 02:45:20 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 02 Oct 2026 02:45:20 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:46:34 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 02 Oct 2026 02:46:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 02 Oct 2026 02:46:34 GMT
ENV LEIN_ROOT=1
# Fri, 02 Oct 2026 02:46:35 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 02 Oct 2026 02:46:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:46:35 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:46:35 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67137e98d6aaa3f7cf9d46a3222f5a6b686f272ecaa53f6a5504d006331771e5`  
		Last Modified: Fri, 02 Oct 2026 02:46:57 GMT  
		Size: 145.8 MB (145825477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:238328a9e89d2cda5de773794ffc6a0e8b709bf684801e57467b353350531586`  
		Last Modified: Fri, 02 Oct 2026 02:46:53 GMT  
		Size: 21.9 MB (21880293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5009167ccfa30cd71a8b00247aca637340dc19baa453c1c238c2e480481a390b`  
		Last Modified: Fri, 02 Oct 2026 02:46:52 GMT  
		Size: 4.5 MB (4515175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7568c52af8268ade822ef0ab5855116a14e3b5a3667de2eacab445ca9ab3056`  
		Last Modified: Fri, 02 Oct 2026 02:46:52 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:2c277c8525a2c8a1bee8dfcf4ef71fa6364633ab685fa50f567ff52f83fb12c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3845465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67cbbbc89ff386c73927a372406e3baf425d0eb47ed6232278ee04f84e153818`

```dockerfile
```

-	Layers:
	-	`sha256:5561bcaf5b8544c3b64398242df4d7dcb60030001b71a7386bcf2ddaddd45ad8`  
		Last Modified: Fri, 02 Oct 2026 02:46:52 GMT  
		Size: 3.8 MB (3827747 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f49c4f06d3e3aa3153965e0d43cd1f4b00a4022f14101bc565592d1644c36a8f`  
		Last Modified: Fri, 02 Oct 2026 02:46:51 GMT  
		Size: 17.7 KB (17718 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:b41e73906f154c6fb77dd32f98b985f7c95aa9d8ebf0324ab622b0726f8f77f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.1 MB (221115055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e95fad63c4101990d8a992cd8c81e7d08e399df78efe50c4872a95a166752035`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 02:45:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:45:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:45:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:45:13 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 02 Oct 2026 02:45:13 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 02 Oct 2026 02:45:13 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:46:33 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 02 Oct 2026 02:46:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 02 Oct 2026 02:46:33 GMT
ENV LEIN_ROOT=1
# Fri, 02 Oct 2026 02:46:34 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 02 Oct 2026 02:46:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:46:34 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:46:34 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd915bfc0a43c9b4b267292d80225c667bfcdc73190c37c88601dfed0079c7ed`  
		Last Modified: Fri, 02 Oct 2026 02:46:52 GMT  
		Size: 144.6 MB (144648265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab8ec9db4ba58dc97ae9b4ba592c1306c1382524ae107522eb9d292d504715fa`  
		Last Modified: Fri, 02 Oct 2026 02:46:53 GMT  
		Size: 22.2 MB (22202334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48b6062693cb518b5793d3f69964d99a402d3e73de30f3dfd19d6172578196e9`  
		Last Modified: Fri, 02 Oct 2026 02:46:52 GMT  
		Size: 4.5 MB (4515190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a379343a3d4e858f9c1fb40705bb0fb3bc9c60aef77f5d5bc3c333d460171a16`  
		Last Modified: Fri, 02 Oct 2026 02:46:52 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:a58f89de6615a4ca2d9404a8bba480ee1e90eede571e7aa13e842f80d480edaa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3845826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d15cc572d9149483851c8341523f98ccfe56911f9a7d948e40b866e273559714`

```dockerfile
```

-	Layers:
	-	`sha256:40c1b087f2a747e333eb35ca8c0a903ac11e46575857accd747adcc97e9c6789`  
		Last Modified: Fri, 02 Oct 2026 02:46:52 GMT  
		Size: 3.8 MB (3827987 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d1701c45304bfe3d203d48f087c0fc9feb0373bd9517b4a8739bc9fd986964b5`  
		Last Modified: Fri, 02 Oct 2026 02:46:52 GMT  
		Size: 17.8 KB (17839 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:cca35aa9c10385c1ae28425e6df836a7854e7dcb08c8d74b5cdc1c633787d9c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.6 MB (225558850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:178f927e8cd3cfd5ada73bf721bdbc7b60a7ef5a6bb9d20903c9a1a4c63fbefe`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 08:05:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 08:05:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 08:05:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 08:05:03 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 02 Oct 2026 08:05:03 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 02 Oct 2026 08:05:03 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 08:08:24 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 02 Oct 2026 08:08:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 02 Oct 2026 08:08:24 GMT
ENV LEIN_ROOT=1
# Fri, 02 Oct 2026 08:08:27 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 02 Oct 2026 08:08:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 08:08:28 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 08:08:28 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:fe57b34d87b4c3538e7b00694a21e5bd450391029c5c22b4da16fbe872c78d51`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 53.2 MB (53195075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37297aa2fe16576090d9bdcf300b9f1b566eafa697618e22f15a26b8c6dc3807`  
		Last Modified: Fri, 02 Oct 2026 08:09:53 GMT  
		Size: 145.7 MB (145671490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f8db677e73c0450ccff468a935e38ae5ee893b08b506bd739bb868830309dc9`  
		Last Modified: Fri, 02 Oct 2026 08:09:26 GMT  
		Size: 22.2 MB (22176658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46a018261a713d407179e9da554451b636c6a64c96b281b3c7401af74e13f4cc`  
		Last Modified: Fri, 02 Oct 2026 08:09:18 GMT  
		Size: 4.5 MB (4515196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57134a7777676b8fdf0b331ae2ac2f88909a4e8ff15235c5e4539a1f1d0901c0`  
		Last Modified: Fri, 02 Oct 2026 08:09:13 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:dd1c4d91edcb6e359541840034240f735c6cddae8cb196dbd347607e8ba0ff1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3846507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68e297103d40b9cca9db4cc59b7395eb8ccd7264af15c9e9ba518aa170eb3cc5`

```dockerfile
```

-	Layers:
	-	`sha256:1afb671f52c20259abe483850838e47ec5fd8c05cfcb82eba3d037c15fe920b4`  
		Last Modified: Fri, 02 Oct 2026 08:09:17 GMT  
		Size: 3.8 MB (3828745 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dae3bad76ded28ed1285ae6cca76ce3a15f751e735141286c23d8ee764df93a0`  
		Last Modified: Fri, 02 Oct 2026 08:09:12 GMT  
		Size: 17.8 KB (17762 bytes)  
		MIME: application/vnd.in-toto+json
