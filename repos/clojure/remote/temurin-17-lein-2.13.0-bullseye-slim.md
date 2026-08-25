## `clojure:temurin-17-lein-2.13.0-bullseye-slim`

```console
$ docker pull clojure@sha256:674ac31444247132491ad01fe205257d96621e04c97943868ea58a265e313446
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-17-lein-2.13.0-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:da9c33d9d815282f0450dac47480ce111e07929040917925b8e74785cbf4419b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.2 MB (196240911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ac4becb5de8b3c74bfde955a168a155ebc26434f5753d3794e43ea03e1955cf`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 19:13:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:13:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:13:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:13:28 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:13:28 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:13:28 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:14:30 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:14:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:14:30 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:14:31 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:14:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:14:31 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:14:31 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ab75afe6a0f0027cc830f1ca4a2c484e7056871a1adf91bd3a0b73c6ffb517b1`  
		Last Modified: Tue, 04 Aug 2026 23:52:04 GMT  
		Size: 30.3 MB (30259620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e208b90a5d6fa1e7c42ac9e084397e41fbf08d7c7441dbe9506736e8bd8fbb97`  
		Last Modified: Fri, 21 Aug 2026 19:14:50 GMT  
		Size: 145.8 MB (145822643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e211560a1fbf8651ca4f189750bef9b3bd5d6f98b8f625a1e57f8da666e29799`  
		Last Modified: Fri, 21 Aug 2026 19:14:47 GMT  
		Size: 15.6 MB (15643040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb7b32ed3523f2d589672fb9efb773059a71bbaa55670cdbdd2cdb2778ee7b73`  
		Last Modified: Fri, 21 Aug 2026 19:14:47 GMT  
		Size: 4.5 MB (4515178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:560ba1b3d3ee74317bdac54f0949378277d6dd9ae94fabc190379e48675094a8`  
		Last Modified: Fri, 21 Aug 2026 19:14:46 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5f59c7e86fdadbf75d3047dc2390066170189fe00e1927338bd1c77e6836f680
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3060086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d366a2b99e5e7bf83d2e7649e31554effa093dc3472f74fbaf94b11da0366bdb`

```dockerfile
```

-	Layers:
	-	`sha256:9043adecee99238cf3217ff68319bc728be635092f3835bf21ec84d66f882052`  
		Last Modified: Fri, 21 Aug 2026 19:14:47 GMT  
		Size: 3.0 MB (3042313 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e4cde5ee1220f236a7bb1e60bb189877ac083793de8843e2ca783398e336f72`  
		Last Modified: Fri, 21 Aug 2026 19:14:46 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:1690a1d07b5f6110398778e9820c702b189dd55d8cde6178555ffe6e1ff36303
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.5 MB (193543609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c9e88cddf0105c1ac416ebfc4a981477180171742fae0540645260f50c3b1e5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:31:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:31:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:31:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:31:52 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 01:31:52 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 01:31:52 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:33:01 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 01:33:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 01:33:01 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 01:33:02 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 01:33:02 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:33:02 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:33:02 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:104799d4ff5b18bad31a13cbbc383730eebef29a1cac161b7905792a8dbe5bd3`  
		Last Modified: Mon, 24 Aug 2026 23:20:27 GMT  
		Size: 28.7 MB (28749031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d53e43d9ec3bb1f51f79761787d030f22caef5e47aba0a8e1f9c91e9cf6fca65`  
		Last Modified: Tue, 25 Aug 2026 01:33:23 GMT  
		Size: 144.6 MB (144647520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6b8005b569ebfde8fc767aef365aeddb0988a0bd7ad2b0a154897201034b98c`  
		Last Modified: Tue, 25 Aug 2026 01:33:20 GMT  
		Size: 15.6 MB (15631443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:985b38e1a2569278d88d9e827784bde8ab2a3308fb010d1dc919f5add079ad43`  
		Last Modified: Tue, 25 Aug 2026 01:33:20 GMT  
		Size: 4.5 MB (4515186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3923261e478ec486f02ccdc3e561e8cfd94d37dcd319bd5a44b0369640c35ff7`  
		Last Modified: Tue, 25 Aug 2026 01:33:20 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6ee1a5a3ac17e23894351dc5514554918529c500ee81fc64e380150d03b07091
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3059816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d5343a1c02d2276a0ecd7808b97478237abfd316cadf928c0dee588617efd4e`

```dockerfile
```

-	Layers:
	-	`sha256:e8a8b6fbf50dd911b5b27f239b5906df63ff82790dabd5a40c93171d12f09e0c`  
		Last Modified: Tue, 25 Aug 2026 01:33:20 GMT  
		Size: 3.0 MB (3041922 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2bb207a2a25ba9d5147a27856f654cbfe429f20b7aec3a03fb18fa95c259787a`  
		Last Modified: Tue, 25 Aug 2026 01:33:20 GMT  
		Size: 17.9 KB (17894 bytes)  
		MIME: application/vnd.in-toto+json
