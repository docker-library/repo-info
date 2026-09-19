## `clojure:latest`

```console
$ docker pull clojure@sha256:9d8e39d8869322a4eba8c81ab49bd967190c274b09f433d490e830ed67d29199
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:latest` - linux; amd64

```console
$ docker pull clojure@sha256:9c847832c26695ab663f23d803ac206d42a5273fbdcec126399babe3722512b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.8 MB (237836853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1692da881df449583072c91185b1c6ff19a3fc14954a1c82c6e53a79627c5d9d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:12:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:12:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:12:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:12:12 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 01:12:12 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 01:12:12 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:13:20 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 01:13:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 01:13:20 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 01:13:21 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 01:13:21 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:13:21 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:13:34 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:13:34 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:13:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:13:34 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:13:34 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5e33730f4aa7fdd1f8c11496783d84c37edd405a00314191880aa12fc1d43fc`  
		Last Modified: Sat, 19 Sep 2026 01:13:57 GMT  
		Size: 92.6 MB (92615084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:905976719a56a8e8655e66fba33b0d2df2e3b4f45494ed7d8bfdbd38842a8150`  
		Last Modified: Sat, 19 Sep 2026 01:13:55 GMT  
		Size: 20.1 MB (20133541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6edeb9f85b38d2ddbe14301c728ebf2015c09f92b4f7c2549d98b38afbea003b`  
		Last Modified: Sat, 19 Sep 2026 01:13:54 GMT  
		Size: 4.5 MB (4515177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd94aceebe41af596d0a00900aa52135ca76c584bdde7879debb0f89fd7e587f`  
		Last Modified: Sat, 19 Sep 2026 01:13:57 GMT  
		Size: 72.1 MB (72068538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04d8653dbffcd678d9c95ec2f0416016bc5a5cdb50673362ac538ee039c4a01e`  
		Last Modified: Sat, 19 Sep 2026 01:13:55 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d3453c377a45ef5eb5a74f5785de6eb9c23320a69d2fe192ab766167246c4b7`  
		Last Modified: Sat, 19 Sep 2026 01:13:56 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:12bb7df6c6930e9b6431ffa95317eabb071ae269e72c4d862b8e7a4d6c4dbb48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7466655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a5cfee61bd790b05223ca5a24c5c6393c707e3c194fddb40df33928c3c68e66`

```dockerfile
```

-	Layers:
	-	`sha256:1405a3c9fc99dd780fea94c9c6c84883cb8cd32e230ae99c0c1e91ae6f490ccf`  
		Last Modified: Sat, 19 Sep 2026 01:13:54 GMT  
		Size: 7.4 MB (7441680 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:89c5bef1159fc469dcdc0d81fdb31ae4064aaf6ea83c432f5177a9a9515f9e89`  
		Last Modified: Sat, 19 Sep 2026 01:13:53 GMT  
		Size: 25.0 KB (24975 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:latest` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:1b5236cef2066729f95ac77331cf797e2f0fd1814a0d51412c3c87ebca75915a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.6 MB (236625289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85fce37d1fe97ebebf50076bf8f67017334d780428049c3ef0b21bfa2ec67a36`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:19:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:19:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:19:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:19:38 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 01:19:38 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 01:19:38 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:20:46 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 01:20:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 01:20:46 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 01:20:48 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 01:20:48 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:20:48 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:21:01 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:21:01 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:21:01 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:21:01 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:21:01 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e66c748f1acc1febba202eb87e080f9fd16c1116e9f3c94c101a7c68f881f7cb`  
		Last Modified: Sat, 19 Sep 2026 01:21:23 GMT  
		Size: 91.5 MB (91532224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f6e4993649449aa221d5cce302a686d9c35d92c20ebf99d41e241faea136f42`  
		Last Modified: Sat, 19 Sep 2026 01:21:21 GMT  
		Size: 20.0 MB (19956703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8be3b24b8722b933a9c9146dee70fa53908c47d9617d6ef2ea055f084a9ea56e`  
		Last Modified: Sat, 19 Sep 2026 01:21:20 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aaf33778caf8ec889112242921c99dc1e0d238030091a92531363cf6e22171c`  
		Last Modified: Sat, 19 Sep 2026 01:21:23 GMT  
		Size: 72.2 MB (72230162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:929b5b1694c5033f3200b019636101e2bc15c00d87a4a93ce69d0ee140296f6f`  
		Last Modified: Sat, 19 Sep 2026 01:21:21 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de5c50d6527baf0cdaae827ad9815e87501f58b6244dfc7e4e014aea1a4c5ca3`  
		Last Modified: Sat, 19 Sep 2026 01:21:22 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:648477237a9883f7ecf9e77e3b5a2ca25ec32ebd5b654740bc8ef9f3c85d5046
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7472515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:579f8227d4082879039213bde0259a6dc3a3c053c6a8d71c1a27f4504bda10a6`

```dockerfile
```

-	Layers:
	-	`sha256:310deb9ef1153875f4debd606002cad348a298d43cdfd156619b791b9a318c4b`  
		Last Modified: Sat, 19 Sep 2026 01:21:20 GMT  
		Size: 7.4 MB (7447416 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1510bf2575a6e265bab19dbfb607104e511a8e1cf7bd29e7461753318c94a1e0`  
		Last Modified: Sat, 19 Sep 2026 01:21:19 GMT  
		Size: 25.1 KB (25099 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:latest` - linux; ppc64le

```console
$ docker pull clojure@sha256:05fe071bca3cc126ed6727da15b0360e42a7ad5e1f1288678340dcba598803b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.1 MB (246143341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:080884411fece36610794f6e33da57c1898085677af97b53a4b8a0818f70b8cd`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 07:33:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 07:33:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 07:33:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 07:33:08 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 07:33:08 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 07:33:11 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 07:36:09 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 07:36:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 07:36:09 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 07:36:14 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 07:36:14 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 07:36:18 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 07:37:05 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 07:37:05 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 07:37:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 07:37:06 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 07:37:06 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:303f9548080ec7733e94ce124ddb2d901dc024b0db2d3e171bdfe62a1d04513b`  
		Last Modified: Sat, 19 Sep 2026 00:02:50 GMT  
		Size: 52.3 MB (52349305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e144bdb34cfddeba81abf8a8bfde859fad0258615bc5463bba81aa5e20a8bf2b`  
		Last Modified: Sat, 19 Sep 2026 07:37:47 GMT  
		Size: 91.3 MB (91255822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaf3f6b6be2e6e19975369e5035bccc6a41d744c29a3630e972e812df25a6eb7`  
		Last Modified: Sat, 19 Sep 2026 07:37:44 GMT  
		Size: 20.3 MB (20348113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b1c90a3d0c1b3a94f205326f7156915506c48ae241229146ea0ad65275ccead`  
		Last Modified: Sat, 19 Sep 2026 07:37:43 GMT  
		Size: 4.5 MB (4515224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d6c82ec1655d3813d882e99a965760fc7d602f9f6c6985e0e3946556d324a9d`  
		Last Modified: Sat, 19 Sep 2026 07:37:46 GMT  
		Size: 77.7 MB (77673801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:665a24bfaf78993e1843520f1faac63e82ba1688aaacc545266a877b68a62dbf`  
		Last Modified: Sat, 19 Sep 2026 07:37:44 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e598956e1d8dcf6ff572d4310873ed831890f57e2006c54137230c0a6736c50`  
		Last Modified: Sat, 19 Sep 2026 07:37:45 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:d0b6b94b9fdfdc0820012f18b9c3d2e3a3e84c5e09149ba8739cd74a14f832f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7455209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2980d8c0c0e452773d499e7ae639fe7073823195c8c5c7a3fe59bc6821c2d4ff`

```dockerfile
```

-	Layers:
	-	`sha256:94d251a2c5f35f72927eb3143512ebbc95916dd8fc898852178debb717d70762`  
		Last Modified: Sat, 19 Sep 2026 07:37:43 GMT  
		Size: 7.4 MB (7430194 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7df9116cf3a3ca7f582d33089de08fb64f16bd69cb1d79822d811125d84bdf44`  
		Last Modified: Sat, 19 Sep 2026 07:37:42 GMT  
		Size: 25.0 KB (25015 bytes)  
		MIME: application/vnd.in-toto+json
