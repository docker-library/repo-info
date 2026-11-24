## `clojure:temurin-11-lein-2.13.1-bookworm`

```console
$ docker pull clojure@sha256:6e1ec409304af295aeb6079c41dcc50e246a57296e91f3f308aac07ecc194167
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-lein-2.13.1-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:42787180cd66f7fc8a90952958e51c2e17f729ae800f6e31b3827bd849017019
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.1 MB (219097190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:054994b8425e168f8920321034540451f271c7b04aa9c198e765d6843764f908`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:08:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:08:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:08:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:08:45 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 05:08:45 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 05:08:45 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:09:57 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 05:09:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 05:09:57 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 05:09:58 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 05:09:58 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:1e6e7ca511b93bafc42241ad75a24d3a61d0ff7191dfcd2337b8c61b142d978b`  
		Last Modified: Tue, 24 Nov 2026 03:39:45 GMT  
		Size: 48.5 MB (48526379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44eafce89942117f25db29025d9af4ba3fd0a2eef1d4b8f6aab85b1a2c11a653`  
		Last Modified: Tue, 24 Nov 2026 05:10:18 GMT  
		Size: 145.9 MB (145923067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8991608b15556b48f648dd19dc65e81bece38b3e16b3a1217ec839665e072b5b`  
		Last Modified: Tue, 24 Nov 2026 05:10:15 GMT  
		Size: 20.1 MB (20132515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:517b4a2c5a398e8b5f3834df1a80298e60f7e27bf01662ceff127d32fe260944`  
		Last Modified: Tue, 24 Nov 2026 05:10:14 GMT  
		Size: 4.5 MB (4515197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.1-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:5b886a7d0d88d8183ac39639028a103921e89fc5ee1ccafac322f030dec930e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4323858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95b10c35b7159215c242b531331078c3315ef65d4eae3a73582a45f36a81f349`

```dockerfile
```

-	Layers:
	-	`sha256:033d909019896f8b2877db151e5f3878bef84fc76b20feb19899b74ec02d0a6e`  
		Last Modified: Tue, 24 Nov 2026 05:10:14 GMT  
		Size: 4.3 MB (4307514 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc53bfa649286c5dc336732eddf6f191546fc2fc0694d4117e36975d3db2d9e7`  
		Last Modified: Tue, 24 Nov 2026 05:10:14 GMT  
		Size: 16.3 KB (16344 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.1-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:28f9288d5260b0e342f261d4329baca26ec2341a8af964cdc4a91617f7471dfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.5 MB (215524242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5053bdb435854b9b4248c2b098cc9e0dafc20b1d21ea3625a5f0ccb23f60298b`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:16:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:16:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:16:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:16:39 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 05:16:39 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 05:16:39 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:17:51 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 05:17:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 05:17:51 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 05:17:52 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 05:17:52 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:5253071eb43403aa847239c81e354ab7f008a222e5f909eb323f9db555504a95`  
		Last Modified: Tue, 24 Nov 2026 03:39:43 GMT  
		Size: 48.4 MB (48412261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b643e1533d7a361b63c9f45b8e2bd87ed21006469624b77f5a9d7283f313b3e`  
		Last Modified: Tue, 24 Nov 2026 05:18:13 GMT  
		Size: 142.6 MB (142621117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dafbc042572ee913100235e9e1d8ae812f8b6fe0086f29337937df7bd3724392`  
		Last Modified: Tue, 24 Nov 2026 05:18:10 GMT  
		Size: 20.0 MB (19975645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8589a1952b5cdf6872b41392846c83f9b71142d1b1e46a1e3da5e0874eb6e39`  
		Last Modified: Tue, 24 Nov 2026 05:18:09 GMT  
		Size: 4.5 MB (4515187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.1-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:7c31a6a3c72e1ce784f9ab4eecb5689f0521dbf7bd6cabcd0cf62a5444943420
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4324210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c51e8794ba84585f183faa229d3fb6195350b67f4080b3c37ae9b15ea2edf6b8`

```dockerfile
```

-	Layers:
	-	`sha256:cbe8e3431d37ba12f94a7facda1508968c8e2be7e28a827e834dd5dfd1ad4d13`  
		Last Modified: Tue, 24 Nov 2026 05:18:09 GMT  
		Size: 4.3 MB (4307747 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f13545e7fdb2479aff9cec143847838f173a99b1c838066a677bb90b3d7c8da`  
		Last Modified: Tue, 24 Nov 2026 05:18:09 GMT  
		Size: 16.5 KB (16463 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.1-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:242b6f05e3bf7cf552f62b30f60a743db7f2d3c6adc63ee0d8f22df9ebb00753
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.5 MB (209512430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fba97042fc8b5a31780250a86cccf5c933095cb8361c70396c42135249e7884`
-	Default Command: `["lein","repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 01:31:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 01:31:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 01:31:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 01:31:03 GMT
ENV LEIN_VERSION=2.13.1
# Fri, 20 Nov 2026 01:31:03 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 01:31:06 GMT
WORKDIR /tmp
# Mon, 23 Nov 2026 23:58:20 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Mon, 23 Nov 2026 23:58:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Mon, 23 Nov 2026 23:58:20 GMT
ENV LEIN_ROOT=1
# Mon, 23 Nov 2026 23:58:25 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Mon, 23 Nov 2026 23:58:25 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc1c890867a74789d617645f79631eec1d26d6fc30fe7336a0281391a23b0868`  
		Last Modified: Fri, 20 Nov 2026 01:32:37 GMT  
		Size: 132.3 MB (132272182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eef67d81660b2ffcf5d6af2274262e7b8ef2d10c9f6942db5fe1cf4df2e43a0`  
		Last Modified: Mon, 23 Nov 2026 23:58:58 GMT  
		Size: 20.4 MB (20356340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed796d9ca631db10f4b9cfbdbddabf20a3dfb4f1d45a694defd69de04c3d6c9c`  
		Last Modified: Mon, 23 Nov 2026 23:58:58 GMT  
		Size: 4.5 MB (4515256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.1-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:9f34d9ce72c3a09f9fae70a52e99a32952dde7525c1351f055a08b94341a978a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4323902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:245807185c6e80d2319fba602dec90cbc01268f302fc17d0f26662937e58fcc6`

```dockerfile
```

-	Layers:
	-	`sha256:958721c32c4d428c81dc880a537711deb25315f3b7da073ce2824c9b5dd0d749`  
		Last Modified: Mon, 23 Nov 2026 23:58:58 GMT  
		Size: 4.3 MB (4307514 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dac33176e2aae4c30dbe41c9b09a914cfec319e18cb7dab14e085864815ab6e9`  
		Last Modified: Mon, 23 Nov 2026 23:58:57 GMT  
		Size: 16.4 KB (16388 bytes)  
		MIME: application/vnd.in-toto+json
