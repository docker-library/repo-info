## `clojure:temurin-26-lein-bullseye`

```console
$ docker pull clojure@sha256:0c0904422dc7a4272cf4c9a7321f7f09b5ba11d2004a3f7c431ca37e866a0b9c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-26-lein-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:26b80962bb636655aa14be119696b34410cfbf91448057419cad0bc762fa14b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.8 MB (169756967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86093540ed533e25cdaacd4c0688015f79241a1787dc6c20036277f7ac33fdbb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 02:23:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:23:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:23:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:23:01 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:23:01 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:23:01 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:24:07 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:24:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:24:07 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:24:08 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:24:08 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:24:08 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:24:08 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:67de115811dc004af37113c6aa85eaaeb7c71fbf7fb79c2219111439cbf76c90`  
		Last Modified: Tue, 14 Jul 2026 00:14:39 GMT  
		Size: 53.8 MB (53776576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:278621367816ca967c4076e0684d4eff83293664db9ccaab6a446fa5dfde83c0`  
		Last Modified: Tue, 14 Jul 2026 02:24:27 GMT  
		Size: 94.5 MB (94524312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b6a10ed5df6dbab3cba0ede355292b10dd93ba99a0314ba0b1f67d1389ca216`  
		Last Modified: Tue, 14 Jul 2026 02:24:25 GMT  
		Size: 16.9 MB (16940474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c07b5f337ab0d30e5ffd4053e6754dcf67cfc84741928fb2a2596282c970d76`  
		Last Modified: Tue, 14 Jul 2026 02:24:25 GMT  
		Size: 4.5 MB (4515177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a08b3d543067634921f362c22fbffac90c512a9ac99765852c41f207dc19bf20`  
		Last Modified: Tue, 14 Jul 2026 02:24:25 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:1c60f46cab32a8a1d0eab2d678d4ef2dd7d76ebc7aedd639010b2aebd1df8313
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4483649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02613df1dd578906f05a83d58cf399e9a2cb333bd84fde8e917bd28319955592`

```dockerfile
```

-	Layers:
	-	`sha256:cd364833c7e9611b05b6b4ebef617040e8c51a699f97569da7a9b2b940465897`  
		Last Modified: Tue, 14 Jul 2026 02:24:24 GMT  
		Size: 4.5 MB (4465918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:699a490aa1520d4c8ad19a40703a1f5d1b48343c0bee995d56ad127b084c7c23`  
		Last Modified: Tue, 14 Jul 2026 02:24:24 GMT  
		Size: 17.7 KB (17731 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:d4060c7ab84bcd8ec11a723abea1899e3c3fe1c4181fdd40702748d683eca5e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.2 MB (167209200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20df8ae55827a8874169c511dc6f31363ab1c26af19bac41e2443a712825a4d9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 02:30:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:30:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:30:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:30:23 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:30:23 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:30:23 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:31:32 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:31:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:31:32 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:31:34 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:31:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:31:34 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:31:34 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:05f35ed13b0f03b4d3292e29957ef64e978b7566be41843c7f2be1cede133720`  
		Last Modified: Tue, 14 Jul 2026 00:14:11 GMT  
		Size: 52.3 MB (52260890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e6718dcdde8ff671ac760f26fc95d4a13f40b37583455b70042968a9a14d2fd`  
		Last Modified: Tue, 14 Jul 2026 02:31:53 GMT  
		Size: 93.5 MB (93504359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54e4e6d1570416195d220ea7c590121be6a439d8f580774e56bcc91f0195ad16`  
		Last Modified: Tue, 14 Jul 2026 02:31:53 GMT  
		Size: 16.9 MB (16928312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:807daf83e38c1786ed14a6d2035dbfc057ed569dda25dc13d8a3a489ceaa8c29`  
		Last Modified: Tue, 14 Jul 2026 02:31:52 GMT  
		Size: 4.5 MB (4515210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19a9231e9f5d5d6ef588f014b98e184e33bee9abcad2707074273315255cafaf`  
		Last Modified: Tue, 14 Jul 2026 02:31:50 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:bd4b2ce565bc741e73651de9f1ff70eac6b12b2cbbb17321b9e577be31eda3d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4482741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:388d0267e51cd05dac86e34a7d59106020b4433e3bff42339e7080e3ab196558`

```dockerfile
```

-	Layers:
	-	`sha256:4d1142b8a63f3200b3a0474648a7958541845d62704260f115bfaa814334abaa`  
		Last Modified: Tue, 14 Jul 2026 02:31:52 GMT  
		Size: 4.5 MB (4464889 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2161df6cc7e9354814088d35449f79093e4690de9b293f2f0b864dffe5286ac0`  
		Last Modified: Tue, 14 Jul 2026 02:31:52 GMT  
		Size: 17.9 KB (17852 bytes)  
		MIME: application/vnd.in-toto+json
