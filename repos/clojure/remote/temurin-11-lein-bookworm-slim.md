## `clojure:temurin-11-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:6067f16b0d5e2aa631f8f7f955e6c26b233c8d26ffbd0fb438ced4b3d7a171a7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:ddf97cde93a2f34ab4c733bfcc9c109e3c4085fbe103ae0648d7a70866a6803f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196700211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87f9ff4fb4d11d08ab195c0441b571a155e5f8a650b40031f36870145768e7b3`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:16:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:16:14 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:16:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:16:14 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:16:14 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:16:14 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:17:20 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:17:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:17:20 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:17:21 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:17:21 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9591c3bdbcdb9c0fd53d3d15037a6907d3913f3a7346b5482101604124de9704`  
		Last Modified: Wed, 21 Oct 2026 01:17:40 GMT  
		Size: 145.9 MB (145864491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f250ca5e70bc786249f5ee666d994bad0512fd727b58506c01557277eb330703`  
		Last Modified: Wed, 21 Oct 2026 01:17:38 GMT  
		Size: 18.1 MB (18072573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed5564130925e364117532fd7e8fa77f85c141181d7434bb48c405091bd856ac`  
		Last Modified: Wed, 21 Oct 2026 01:17:37 GMT  
		Size: 4.5 MB (4515180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c39342cb8d2b3e470608464dc2e3ca90beff5de16b433425c86fd040254b6d43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2771617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47c21fb240c4fd4863461a0fa4d156ed732dcc70921295658c8bfae7cd95c0b1`

```dockerfile
```

-	Layers:
	-	`sha256:fece93d401abc782f6e13b449c711d0a7b065890762b1dd2b37ea0cb591ab7fa`  
		Last Modified: Wed, 21 Oct 2026 01:17:37 GMT  
		Size: 2.8 MB (2755839 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:951b0e22a2df5e1715811a8a09310605a0d9c3a1d77e4eeaeb15132f8d179ade`  
		Last Modified: Wed, 21 Oct 2026 01:17:37 GMT  
		Size: 15.8 KB (15778 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:c9d0b53f1640a5ecfb8a7658ef7a29cc0325110426d75fc2d1d401eee5857642
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.1 MB (193136323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b5307166a464ca0257fe96737538e9a1b97da09614dae1cdae9e9504624cc52`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:22:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:22:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:22:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:22:35 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:22:35 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:22:35 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:23:45 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:23:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:23:45 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:23:47 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:23:47 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41fa5533b68201be7f4e49b178d44cebed4ba00b9773e273d6de30bdb1fbb7f4`  
		Last Modified: Wed, 21 Oct 2026 01:24:08 GMT  
		Size: 142.6 MB (142576575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3db51ff7612aff3a6a21027782821ca24525747562c2a2b31608ad230c558375`  
		Last Modified: Wed, 21 Oct 2026 01:24:05 GMT  
		Size: 17.9 MB (17906088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ef51286139ced4776ab146ce0e21c87df9920e29ad0ec1a99b2dd278950128b`  
		Last Modified: Wed, 21 Oct 2026 01:24:04 GMT  
		Size: 4.5 MB (4515203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:fcefbd5b62105c36b0cdc608a6ce767b6a9cd22984357a3e6225bb2e0a2de6a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2771971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6445e9e5b75f1756739d4088cde6ac9fd2ada16952c37d4b7f326c948a9ae11f`

```dockerfile
```

-	Layers:
	-	`sha256:ae40dabbf04e733035a37a2bc7f7b3781da3f1123fef4675c99079ac50dc8737`  
		Last Modified: Wed, 21 Oct 2026 01:24:04 GMT  
		Size: 2.8 MB (2756072 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f47b91389ead9e0a9549023241f5b3a001a40595b2f50e1fcde3b6d46bd58f95`  
		Last Modified: Wed, 21 Oct 2026 01:24:04 GMT  
		Size: 15.9 KB (15899 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:4d61c3cf78472da195eeedffdce60cbc3815438f604cf133752e6944c2520e12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (187983262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a120a8c23ee900b082c88dff2e9a31e783141c9cb6a34393dccfa2926b6bd836`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 09:58:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 09:58:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 09:58:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 09:58:44 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 09:58:44 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 09:58:44 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:03:07 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 10:03:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 10:03:07 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 10:03:13 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 10:03:13 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:dbe4b1ae261d30189a9f71db084062762a30a0c977f281a1fb8f9b8506a24e42`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 32.1 MB (32093209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb086e599d6565b3e77279e7b178001d0b1cb12c5fc3e049b1c486611b18ac61`  
		Last Modified: Wed, 21 Oct 2026 10:04:02 GMT  
		Size: 133.1 MB (133095148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ccae2799fdcbea24baf659da3d3ab49cb9910c85eb6299acfe62f53ad0df7bd`  
		Last Modified: Wed, 21 Oct 2026 10:03:59 GMT  
		Size: 18.3 MB (18279649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d25e7a24274b9759683dd7609bf2c093495a58f6df4f99f10def5b030ba4feac`  
		Last Modified: Wed, 21 Oct 2026 10:03:58 GMT  
		Size: 4.5 MB (4515224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:54aaface373a90e8fc5f0a2e8d1eb86eca9960f12192fd1dc561a65e68622eed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2772877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d80d3c4b9ad562a661971ba530d9d88bb8b0ae0d03fd2edec72d125cb8ed26f2`

```dockerfile
```

-	Layers:
	-	`sha256:50215682454c41287dd3a89791514ca14799825e8946fbd5fd5ffd2d76fb4c48`  
		Last Modified: Wed, 21 Oct 2026 10:03:58 GMT  
		Size: 2.8 MB (2757057 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:550706198f3a7e577f298edc263c55b1665dca0ff2b143296e88d0af01895336`  
		Last Modified: Wed, 21 Oct 2026 10:03:58 GMT  
		Size: 15.8 KB (15820 bytes)  
		MIME: application/vnd.in-toto+json
