## `clojure:temurin-17-lein-bookworm`

```console
$ docker pull clojure@sha256:e1fa070f2b6e394f7a483b8b62927151ce0cdb9e316e84966154b97d77876ea0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:39fd105140c1e7e91705a848215670274136793f631bac84747073f5c9161489
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.3 MB (219289018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5265cf149e9f88a906c796b9cd88fff12aff49916e1d790cd279c7202c69a15a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:09:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:09:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:09:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:09:57 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 05:09:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 05:09:57 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:11:09 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 05:11:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 05:11:09 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 05:11:11 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 05:11:11 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 05:11:11 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 05:11:11 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1e6e7ca511b93bafc42241ad75a24d3a61d0ff7191dfcd2337b8c61b142d978b`  
		Last Modified: Tue, 24 Nov 2026 03:39:45 GMT  
		Size: 48.5 MB (48526379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24666438ec453160a01deaf2356d36a83af6fc41fabe05f0ca98c4ed11c38d17`  
		Last Modified: Tue, 24 Nov 2026 05:11:30 GMT  
		Size: 146.1 MB (146114251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:572202361992f789fa57fdec428dd340c27975f9af635c187a494da616b5188f`  
		Last Modified: Tue, 24 Nov 2026 05:11:28 GMT  
		Size: 20.1 MB (20132243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2746ed1264bd878558a6b3f3f30f656e89f83f691dcaf0451cc728550a9be1ee`  
		Last Modified: Tue, 24 Nov 2026 05:11:27 GMT  
		Size: 4.5 MB (4515215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2ad7cd911d6bec1e4fa4324f2e635747b7ce19f34999104164673bd80a89630`  
		Last Modified: Tue, 24 Nov 2026 05:11:27 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:a5a16fdef20efb08febe25097142e58af4313a09cde112d8d0e5462b7ffe047c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4306338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd518d89f493141109c9c68c7e42137d17b94790d3614e072f52ba7cb3d74177`

```dockerfile
```

-	Layers:
	-	`sha256:a48dda8191e35893b175741109492e49a6b3f1a30baf160390e1f495fd6f1538`  
		Last Modified: Tue, 24 Nov 2026 05:11:27 GMT  
		Size: 4.3 MB (4288004 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:18f1dcacab8364e4f57e66262899d2009265a5fabc1ec11e1770023872383e16`  
		Last Modified: Tue, 24 Nov 2026 05:11:27 GMT  
		Size: 18.3 KB (18334 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:212c9dfc70e49d7b17981b0caceda355593af39274f02fee9c5d257bdc21e6aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.9 MB (217852832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c36b0c11273d5f3d6ada36a4306e3a959e0bda761caf0ae4150dc39203d6f12b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 01:02:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:02:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 01:02:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:02:45 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 01:02:45 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 01:02:45 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:03:58 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 01:03:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 01:03:58 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 01:04:00 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 01:04:00 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 01:04:00 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 01:04:00 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d2af348dd61183253daeef93ba1fa909cc38ca51b735008b32c11b2a4c4dc85`  
		Last Modified: Thu, 12 Nov 2026 01:04:21 GMT  
		Size: 145.0 MB (144957159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1b24b0a0aac11710b7887d010c100481096bd123d41ebd00cb09652f1952226`  
		Last Modified: Thu, 12 Nov 2026 01:04:19 GMT  
		Size: 20.0 MB (19967062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99e1c4d61f36783ec9c3bb5994b5eb28925cc985033c19e5ea6b15d95455fe10`  
		Last Modified: Thu, 12 Nov 2026 01:04:18 GMT  
		Size: 4.5 MB (4515227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6a828711d16eeb942e1626bf41cd0a651661f462e05209177b072d7a95c11b7`  
		Last Modified: Thu, 12 Nov 2026 01:04:18 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:294f5052d2872519f61db8584267421b7836558c273c5c5bd6c799f1d1dcaaeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4305469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2a3eededbe5fc533fdc6d8f1006e068c435139dc78cdbb8177ba8a5bf9d6ddf`

```dockerfile
```

-	Layers:
	-	`sha256:80019328a65eced2357dad74393b254e5e9897f6c88ee59d7e410b3fd090070f`  
		Last Modified: Thu, 12 Nov 2026 01:04:18 GMT  
		Size: 4.3 MB (4287611 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f5bb345267899bb88de8618dfdf12ceb60899441296180b6a966dc0b3fe4883f`  
		Last Modified: Thu, 12 Nov 2026 01:04:17 GMT  
		Size: 17.9 KB (17858 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:2c05102e880267a814b1742a81cff035bb1c209ae0a9fd7ae04f50b1601c2fbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.1 MB (222133316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdd9668be1497f89878ba9ce6ee029fba4dbfcca5789778d7de724b656624fa0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 12:33:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 12:33:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 12:33:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 12:33:17 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 12:33:17 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 12:33:18 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 12:35:58 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 12:35:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 12:35:58 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 12:36:01 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 12:36:02 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 12:36:02 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 12:36:02 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:936a6a1e0c40eccb1f23047919ed843c0c969e4e372431764e94fd25b358e9c4`  
		Last Modified: Tue, 24 Nov 2026 03:39:19 GMT  
		Size: 52.4 MB (52368504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec6a11376a5cd3ce624061de944a2f493e3fa9f8577b5d35b80d917423680ef3`  
		Last Modified: Tue, 24 Nov 2026 12:36:46 GMT  
		Size: 144.9 MB (144892597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65bde0747daa4712be7e2b654f29df54abeb3b4a42c1dc4904ec2cee6634b09e`  
		Last Modified: Tue, 24 Nov 2026 12:36:40 GMT  
		Size: 20.4 MB (20356090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffe741c7bfc1e96f2b8afd4e50f38d0407f291395372b29f1c8b2a9f6733b8e7`  
		Last Modified: Tue, 24 Nov 2026 12:36:40 GMT  
		Size: 4.5 MB (4515198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90dffba97a4bee32f9ccd56607bdf71582f409c48746e8934c74819b44a85a54`  
		Last Modified: Tue, 24 Nov 2026 12:36:39 GMT  
		Size: 895.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:d0c2423bb1ea1c031cf73ed1ee88b1497c5d582105dc210151a4938b29137eab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4306997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12c3335cd5939c8e6012f120a4166f46d98372e34c9da7c7927eb2251a8e4412`

```dockerfile
```

-	Layers:
	-	`sha256:ac52b5a5b4411e55812748b12558f687a1e0c212f45914895d1e13abfec364a6`  
		Last Modified: Tue, 24 Nov 2026 12:36:39 GMT  
		Size: 4.3 MB (4288619 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2c1285b60a2ea8a4c1b6d18109b349f6c83b15a1fb5dccb4aacdf332b0f675a3`  
		Last Modified: Tue, 24 Nov 2026 12:36:39 GMT  
		Size: 18.4 KB (18378 bytes)  
		MIME: application/vnd.in-toto+json
