## `clojure:temurin-17-lein-bullseye-slim`

```console
$ docker pull clojure@sha256:9a702f147a9cfa0e3a471b5892be868034c97a0d66c792c5aafa7f872dd42c37
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-17-lein-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:89df022b875c9b14e2046c2cfa636e52e9ba27e640fa7ac9df22811631125de6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.2 MB (196240918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0b37dad0fbcae5a480a0fd26b6faeb8c69022e0d03189b2bd8d1f1a811c6d6a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:27:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:27:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:27:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:27:22 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 01:27:22 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 01:27:22 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:28:32 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 01:28:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 01:28:32 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 01:28:33 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 01:28:33 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:28:33 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:28:33 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4705738e5e0492efae5d2523aa791e06c852e2e1acb5e70a365cc08f9da0c556`  
		Last Modified: Mon, 24 Aug 2026 23:20:36 GMT  
		Size: 30.3 MB (30259727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cac49dca60d9c1834662cd8a578cddc283e046436b503689cbdae23fe8317dc`  
		Last Modified: Tue, 25 Aug 2026 01:28:52 GMT  
		Size: 145.8 MB (145822644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90e90dc09a5a444d0c84a631fa9c713065ab344ad90fda0c73a0dd5ed62cffff`  
		Last Modified: Tue, 25 Aug 2026 01:28:49 GMT  
		Size: 15.6 MB (15642918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68a7c201840799ed7e53644df303b8f83643f82721f32b28d7c90716e61063df`  
		Last Modified: Tue, 25 Aug 2026 01:28:49 GMT  
		Size: 4.5 MB (4515199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7ff5b95f78421f9329a7c14252715c9abb9fbe01defbf0db2fd822900350d94`  
		Last Modified: Tue, 25 Aug 2026 01:28:48 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6742292cbe3be1a88a035ff07d3290a2fa065d6e4ddff54b3068515707a2238f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3060086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd5834c16f23e065cf0364f0597b9eb2b1aa1e962261a76c5e4fa25873c8293f`

```dockerfile
```

-	Layers:
	-	`sha256:bb57d225da79b87227ff243dfee60bbbefb64c0243758612d8d061e96401dc90`  
		Last Modified: Tue, 25 Aug 2026 01:28:49 GMT  
		Size: 3.0 MB (3042313 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c7484551453bd08090db0e1f542c2fac69898fb387ec66560c53aac92deeb5d0`  
		Last Modified: Tue, 25 Aug 2026 01:28:48 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bullseye-slim` - linux; arm64 variant v8

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

### `clojure:temurin-17-lein-bullseye-slim` - unknown; unknown

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
