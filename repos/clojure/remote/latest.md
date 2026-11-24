## `clojure:latest`

```console
$ docker pull clojure@sha256:dd5e1ec992d927c2d5f09ebfbf640d3a5a5b12b54d41b5723b30f149a422c9c5
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
$ docker pull clojure@sha256:622bf4b256069f704667c6a017c20493b049d8c3d0bb931caf1e907bc0c68a35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.9 MB (237880685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:305bd88d310d4105486c65fe84460d22626a13ce486f40765d71ad8b144d7771`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:07:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:07:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:07:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:07:55 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 05:07:55 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 05:07:55 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:09:12 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 05:09:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 05:09:12 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 05:09:13 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 05:09:13 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Tue, 24 Nov 2026 05:09:13 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:09:26 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 24 Nov 2026 05:09:26 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 24 Nov 2026 05:09:26 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 05:09:26 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 05:09:26 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1e6e7ca511b93bafc42241ad75a24d3a61d0ff7191dfcd2337b8c61b142d978b`  
		Last Modified: Tue, 24 Nov 2026 03:39:45 GMT  
		Size: 48.5 MB (48526379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1f86cc6df21e1bcfc40f116baac5a26cd6cc1cbccca3a93e266ece0f2a2397c`  
		Last Modified: Tue, 24 Nov 2026 05:09:49 GMT  
		Size: 92.6 MB (92613960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e14420cbe728774fbb9eaf2a0b349e1ef924386e7c8e685a72a88c890eec5caf`  
		Last Modified: Tue, 24 Nov 2026 05:09:46 GMT  
		Size: 20.1 MB (20132489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b24ebad003deb264ad63850ed2b890a5e202d0ed3376f8b759285420e239cb3f`  
		Last Modified: Tue, 24 Nov 2026 05:09:45 GMT  
		Size: 4.5 MB (4515176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b87a024e76a8b45c461bf42feeb564eac66e064201be2448126296b5295683a4`  
		Last Modified: Tue, 24 Nov 2026 05:09:48 GMT  
		Size: 72.1 MB (72091109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1909ed7badcbe4939c5795e161c4ebcd27bd2fc176bf7acb3eabffacd759102a`  
		Last Modified: Tue, 24 Nov 2026 05:09:47 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed41b4799a3dd32a1da8cc3e67b7c625ef5ad6030bbb82e05bd33934af750119`  
		Last Modified: Tue, 24 Nov 2026 05:09:48 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:0cc0aab72a2d9288d19768e9aa2a84b7b4cde44f29c7769d16874f429dbccc89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7465261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:067923f411d531bcfa317f83c8fa548e30756b8ec810e9360147f3830eda2229`

```dockerfile
```

-	Layers:
	-	`sha256:07a7b49e6cbb7063a093d5e1132c32b9d22af38701a74b68a285d2214893e373`  
		Last Modified: Tue, 24 Nov 2026 05:09:46 GMT  
		Size: 7.4 MB (7439691 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9aa09626e7b2f32b33ac6af9a52248dfa4132ff002911ba30392ace7abd405a2`  
		Last Modified: Tue, 24 Nov 2026 05:09:45 GMT  
		Size: 25.6 KB (25570 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:latest` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:d91d30d496ab5f584c9544f5b51c729c6bdb174e00400ed3f0e3bebaa03a0792
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.7 MB (236720070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3aeec17929fe8eeeb0dfde55272ac1112d0534b90374f119bbc6eefe8ea054df`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:15:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:15:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:15:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:15:04 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 05:15:04 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 05:15:04 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:16:20 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 05:16:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 05:16:20 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 05:16:22 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 05:16:22 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Tue, 24 Nov 2026 05:16:22 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:16:35 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 24 Nov 2026 05:16:36 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 24 Nov 2026 05:16:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 05:16:36 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 05:16:36 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:5253071eb43403aa847239c81e354ab7f008a222e5f909eb323f9db555504a95`  
		Last Modified: Tue, 24 Nov 2026 03:39:43 GMT  
		Size: 48.4 MB (48412261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d401459b27ce4333d652aeadc18a1833fbdc79cf1d1799935fe1b7a0334de439`  
		Last Modified: Tue, 24 Nov 2026 05:17:00 GMT  
		Size: 91.6 MB (91553945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdeb360dba95dafeac432dd0a4ec47c6e7793b52578324e0339f8e2b492fbc99`  
		Last Modified: Tue, 24 Nov 2026 05:16:57 GMT  
		Size: 20.0 MB (19975859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b981ff289005c900a52aacc2a01abf4b0375726edb06f17281cd8b13134bfad`  
		Last Modified: Tue, 24 Nov 2026 05:16:56 GMT  
		Size: 4.5 MB (4515229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86a801a8570d1ff4924e21f14b5fa6ee4128ea2bcf790af6d2502f0673d801c0`  
		Last Modified: Tue, 24 Nov 2026 05:16:59 GMT  
		Size: 72.3 MB (72261204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4502466ae685b022dbd100d5e898870ce699cb8faeb912a14ce83d975116c2e`  
		Last Modified: Tue, 24 Nov 2026 05:16:58 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b252fa2cdb44d7a9dfda4a7081d8b65a3de84366bd8a3816ec8d70ce525c002`  
		Last Modified: Tue, 24 Nov 2026 05:16:59 GMT  
		Size: 896.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:ff1ced2a8b258168f09b56572e28d9eb79cf775308e3b61f0d8816d47614f47c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7471122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bdd674ab0cffac48a8c9de3315edb31dd4a4a7be0f5ec6a9851e73278c3f51b`

```dockerfile
```

-	Layers:
	-	`sha256:a36d5e72ae237bb744c42f72c89af288b87e39ec5ee651e698352590e5ba8ecb`  
		Last Modified: Tue, 24 Nov 2026 05:16:56 GMT  
		Size: 7.4 MB (7445427 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:15ad2ebae0f726ea30b76d24ab0a87514eddf7250762961dc5decd23da853d1f`  
		Last Modified: Tue, 24 Nov 2026 05:16:56 GMT  
		Size: 25.7 KB (25695 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:latest` - linux; ppc64le

```console
$ docker pull clojure@sha256:7715088e43ed032f5f3242235a2db00885f31144e522d3da5187dc9fd101cff8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.1 MB (245066342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6055778ec404a24715db1ca989aff395406894d570f5c3cba02b392f34cc185`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 12:17:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 12:17:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 12:17:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 12:17:51 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 12:17:51 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 12:17:52 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 12:20:48 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 12:20:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 12:20:48 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 12:20:52 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 12:20:52 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Tue, 24 Nov 2026 12:20:53 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 12:21:25 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 24 Nov 2026 12:21:26 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 24 Nov 2026 12:21:26 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 12:21:26 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 12:21:26 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:936a6a1e0c40eccb1f23047919ed843c0c969e4e372431764e94fd25b358e9c4`  
		Last Modified: Tue, 24 Nov 2026 03:39:19 GMT  
		Size: 52.4 MB (52368504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a404324abe79bce4b7b38d202f674065fc61b05b33219ef7a7652a1aff6ae4c1`  
		Last Modified: Tue, 24 Nov 2026 12:22:14 GMT  
		Size: 90.1 MB (90119602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4032a252c6f1537641e19606047b383beb174bfc5c95629cbc5d64a0282586b6`  
		Last Modified: Tue, 24 Nov 2026 12:22:11 GMT  
		Size: 20.4 MB (20356404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16a79c920d6cfb82e3f5fa875a4430e6d28b2523a08e00866163762226f8ac01`  
		Last Modified: Tue, 24 Nov 2026 12:22:10 GMT  
		Size: 4.5 MB (4515223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d0d651819e700f8ce227dee449d6f6dc8bc17bbb6eca0548e80d3d138da419f`  
		Last Modified: Tue, 24 Nov 2026 12:22:14 GMT  
		Size: 77.7 MB (77705039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e51b8c739fe24f94cd57aa274d804e7ec030f786adadd4ca13373715d9d6edd4`  
		Last Modified: Tue, 24 Nov 2026 12:22:12 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8694b7c6b81b5101e1f0f0f563293ce36c1fe0f5c1e6511158d6f230d87bfee2`  
		Last Modified: Tue, 24 Nov 2026 12:22:13 GMT  
		Size: 895.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:7398b95cae5f2e30491647a687aabb7ed624e43105d14e71b2ed47398d20616f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7451953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9fadfbd33cbbee2e74b80ddeebe4f07b65f81ab83b3142880dddf0fdfc7a1e2`

```dockerfile
```

-	Layers:
	-	`sha256:18379b3850e5ada8f994cd4078805b8f7bbfd1f4d93e7290231b80a5a5aab25e`  
		Last Modified: Tue, 24 Nov 2026 12:22:10 GMT  
		Size: 7.4 MB (7426342 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:edcd6f1502fb3aec4ce54af24e9cd596efe59b66ec2bc98990009c6dc0f54440`  
		Last Modified: Tue, 24 Nov 2026 12:22:10 GMT  
		Size: 25.6 KB (25611 bytes)  
		MIME: application/vnd.in-toto+json
