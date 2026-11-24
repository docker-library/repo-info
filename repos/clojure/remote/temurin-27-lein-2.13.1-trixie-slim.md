## `clojure:temurin-27-lein-2.13.1-trixie-slim`

```console
$ docker pull clojure@sha256:79bd3d801851264240769a40f04021791901311e1570d5dec233147d0960bab4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-lein-2.13.1-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:c008d39af23a8b1d73965b86430f9311a4c0c60f36e9cf1dc73bfab858e9e706
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.7 MB (144748758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e00b297a0398269869b4c7fb79e3d0527fdd0f5a6624331959edd7380e43163`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:13:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:13:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:13:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:13:41 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 05:13:41 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 05:13:41 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:14:55 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 05:14:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 05:14:55 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 05:14:57 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 05:14:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 05:14:57 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 05:14:57 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb2400d8f957439eab7e769a6e5897435fe51d6e38012d5367415d71559fe7ee`  
		Last Modified: Tue, 24 Nov 2026 05:15:15 GMT  
		Size: 93.6 MB (93649658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d1d06357264c15d3db9beb49a04f4c7b1656bc5115c843197fdaa65d887f5ed`  
		Last Modified: Tue, 24 Nov 2026 05:15:13 GMT  
		Size: 16.7 MB (16740768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:693b0e31923696ff03b71aef5835d7d7174a6f3b3ac35209548a63ede8a53dbb`  
		Last Modified: Tue, 24 Nov 2026 05:15:12 GMT  
		Size: 4.5 MB (4515220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28dd5bc7ea921d86c9a7e5e399113b83ae78a8fe94bc546816a46527d63cc16c`  
		Last Modified: Tue, 24 Nov 2026 05:15:12 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.1-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b5cdd709b955c11f03f283df16f90e046f31ded98fd32ea7895999c0407bbc86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2353770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8d9d157d4be1233ea8645bd1295a628e45b7869e959dfef6bd7c213ce138972`

```dockerfile
```

-	Layers:
	-	`sha256:8338a4fb93dca834de3eb79d40bf111a2d3750eeae2e02b4f30afca9742d7668`  
		Last Modified: Tue, 24 Nov 2026 05:15:12 GMT  
		Size: 2.3 MB (2335428 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f6db4c713230005762edb734720890c32d0e08a6e03c13cf4f9cd8d5b32753c6`  
		Last Modified: Tue, 24 Nov 2026 05:15:12 GMT  
		Size: 18.3 KB (18342 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-2.13.1-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:0665d4be266d617634fe4da2206c16e279318d94d3b96b1a0dcd0043e290fa1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150109134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dddf9eeaab000ccbe7d90c5200d9c055a85d41312a24b7f9bacbd2ff066edf42`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 20:06:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 20:06:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 20:06:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 20:06:18 GMT
ENV LEIN_VERSION=2.13.1
# Fri, 20 Nov 2026 20:06:18 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 20:06:18 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 00:45:59 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 00:45:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 00:45:59 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 00:46:03 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 00:46:04 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 00:46:04 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 00:46:04 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:313234a8502e59652a776296191b1755855d823324e0df0c18a0106e7dc23485`  
		Last Modified: Fri, 20 Nov 2026 20:10:12 GMT  
		Size: 91.9 MB (91933337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bb0c2424e59b62ec126382926d5e28d3f8198f08b5ea52e9c0fee633f57e288`  
		Last Modified: Tue, 24 Nov 2026 00:46:24 GMT  
		Size: 20.0 MB (19992005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a7d51b9462359b9a68aefa0ab29c24aa95d8995854d26d2d10d8070558ab4cb`  
		Last Modified: Tue, 24 Nov 2026 00:46:24 GMT  
		Size: 4.5 MB (4515211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ba2b295a0e38354dfef19d83dff2328837910e763ef5dccc25df22f7b42495`  
		Last Modified: Tue, 24 Nov 2026 00:46:24 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.1-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d99012a26183dcd51cdba0eb9070cc36a2c9100fc81e4dd62d1bf216cd79305e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2336839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8acbf954ece044081fac167952d4350c6117ed5e6287760c77b79fd69494819`

```dockerfile
```

-	Layers:
	-	`sha256:d074cc46041da96c48338e0189fa6a65f837ae681c66e6b4203d004693501113`  
		Last Modified: Tue, 24 Nov 2026 00:46:24 GMT  
		Size: 2.3 MB (2318455 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:578960974a2b3422c32aead74141d08a121b0d90828f3f3b93e05c24ef05aac0`  
		Last Modified: Tue, 24 Nov 2026 00:46:24 GMT  
		Size: 18.4 KB (18384 bytes)  
		MIME: application/vnd.in-toto+json
