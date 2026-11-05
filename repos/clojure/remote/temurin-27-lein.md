## `clojure:temurin-27-lein`

```console
$ docker pull clojure@sha256:3733f98643eca63a588ee41190641f6f3e32a71f746ac5fc59d8624e1017313d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-lein` - linux; amd64

```console
$ docker pull clojure@sha256:e00d1c884ee2181a697d192848c2fdd4a5f4f2156f2f16b90c1719772eb8a79e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.8 MB (166797683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:763ebce2a56e1b47f44e4ac62191f151f453a2fd8b32d97b1e4c47ed045a0edc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:11:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:11:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:11:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:11:34 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 08:11:34 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 08:11:34 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:12:43 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 08:12:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 08:12:43 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 08:12:44 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 08:12:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:12:44 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:12:44 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bb904c03b8f2ad6007298aa912ea2297920967ea4aa703cd36073d9f627fb94`  
		Last Modified: Thu, 05 Nov 2026 08:13:05 GMT  
		Size: 93.6 MB (93622538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52bbe929de9496ed15bce3617a52471c1409849fc82852fcacddce6a37650381`  
		Last Modified: Thu, 05 Nov 2026 08:13:03 GMT  
		Size: 20.1 MB (20133049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18a0c3f46dd53811c3b882860479dae990e9449fe2eec752326b8043f6b0b194`  
		Last Modified: Thu, 05 Nov 2026 08:13:03 GMT  
		Size: 4.5 MB (4515182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82780012e9d8da84da11e240bbf698cec919fd724224bbaed79b647e5c70d57e`  
		Last Modified: Thu, 05 Nov 2026 08:13:03 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:3995832b0bfac8e448063458ecf7acfc0b535c4575ec3a4e830e49c1524bcf13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4270659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d35dc3d143d4f94f2ced995d6af57f7caf4d144bb20f22bc0a2cd352bb6951b1`

```dockerfile
```

-	Layers:
	-	`sha256:7ba2e27b206619b912470a554af8187a958eae7127a4417aef1087e74dafe2c6`  
		Last Modified: Thu, 05 Nov 2026 08:13:02 GMT  
		Size: 4.3 MB (4252278 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a394e4f49cbdef31fd2a7c17f1581edeedab34fa0c542250d80d7fefdfa41395`  
		Last Modified: Thu, 05 Nov 2026 08:13:02 GMT  
		Size: 18.4 KB (18381 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:240e1ac6ccf5b0c591b99651d3f23da44e92664127da29e7ec33d701af124e3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.5 MB (165528342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed940cba4702f67eea6914328a99b4309de7c75e422b6a91585a3f9febc7255c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:20:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:20:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:20:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:20:38 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 08:20:38 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 08:20:38 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:21:49 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 08:21:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 08:21:49 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 08:21:51 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 08:21:51 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:21:51 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:21:51 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6239b313226c39f6579e11f82d8f65dbf331eb07371a72914abf1423fdf987ab`  
		Last Modified: Thu, 05 Nov 2026 08:22:10 GMT  
		Size: 92.6 MB (92633118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38971c8aab56865d442b89864183bfea56ce05fe99d5ce0627e3b7d8512c4c5d`  
		Last Modified: Thu, 05 Nov 2026 08:22:09 GMT  
		Size: 20.0 MB (19967130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f78240872b7438c4c0a69bd86e83dd0fe1a7dc694d343d5a09b660eecbde0538`  
		Last Modified: Thu, 05 Nov 2026 08:22:08 GMT  
		Size: 4.5 MB (4515211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfc4de2907ebec986ff2ecfbb1e000557cad4444817e3035861fa2712ea5a37c`  
		Last Modified: Thu, 05 Nov 2026 08:22:08 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:70c3c52faed9c7dd447deb7a6ade8301e1ab041224956c57247133e0d0ac0f4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4270440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae217443229020b4d1dcaee7a64073311bb08b47c59bfacd0fab938aad7b3b1d`

```dockerfile
```

-	Layers:
	-	`sha256:336ff7d44418c3517db11ba0ca9d63c0bf53a8ed119bb12c0502da0836f4d190`  
		Last Modified: Thu, 05 Nov 2026 08:22:08 GMT  
		Size: 4.3 MB (4251914 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:399568c5188016d155b49cc2d3f89569ffd2d9125e0a4b99cfc1fdd66a313653`  
		Last Modified: Thu, 05 Nov 2026 08:22:07 GMT  
		Size: 18.5 KB (18526 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein` - linux; ppc64le

```console
$ docker pull clojure@sha256:dbed30bd81390b0f19f9ff66280e8fe64a530e65d9c5ef6697c05f067676491f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.5 MB (169495068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3405f7f3a39c6c7579b342d67ff6d00815461934f1b89e2609d05a7775158dce`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 10:38:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 10:38:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 10:38:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 10:38:09 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 10:38:09 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 10:38:10 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 10:41:43 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 10:41:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 10:41:43 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 10:41:48 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 10:41:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 10:41:48 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 10:41:48 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:76d39433e5f7ff3fe5badf80d81523262cac841a13ec65f6dee0fceb621f6b0f`  
		Last Modified: Wed, 28 Oct 2026 00:20:21 GMT  
		Size: 52.4 MB (52366307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c96af269ab4129d840654fe7def213b2af9f9ca3f8d01742555a610fa4c198b`  
		Last Modified: Wed, 28 Oct 2026 10:42:38 GMT  
		Size: 92.3 MB (92255799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f1c95a78ff9dd5a43d168a61d91fd33b11266d5b01bf24fbc25d7d2c84764d1`  
		Last Modified: Wed, 28 Oct 2026 10:42:36 GMT  
		Size: 20.4 MB (20357318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5960ebda9e7bdf0e2404ba84d5574d90cd54f3cefbbfe4a033cda8f29b6c23f2`  
		Last Modified: Wed, 28 Oct 2026 10:42:36 GMT  
		Size: 4.5 MB (4515213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f516a77f62706b85ac5875ab864c3b5ca0e148f861a0137d4ae90f9c174f2562`  
		Last Modified: Wed, 28 Oct 2026 10:42:35 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:3cdb97c7c597492cd18eb5a02e2acf7e910863dc76c5f351a0724fea86c5448f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4256524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92f304d9acb1f37a8fea4162550bece3e414c4281302add64887201b9cac9d8d`

```dockerfile
```

-	Layers:
	-	`sha256:5fb29f2856f4444ea396e15d6bd0c102badeebcd5fcbd187de80887d6be407aa`  
		Last Modified: Wed, 28 Oct 2026 10:42:36 GMT  
		Size: 4.2 MB (4238087 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:faed5bf85aa47f0ba510a39917d74960692227fceb826ad0ecb2be054361701b`  
		Last Modified: Wed, 28 Oct 2026 10:42:35 GMT  
		Size: 18.4 KB (18437 bytes)  
		MIME: application/vnd.in-toto+json
