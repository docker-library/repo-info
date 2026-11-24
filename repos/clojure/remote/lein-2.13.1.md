## `clojure:lein-2.13.1`

```console
$ docker pull clojure@sha256:a982ed69493e4ca58a8256a7b7816bb1197baa4d8be683fc29a53f3576bee208
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:lein-2.13.1` - linux; amd64

```console
$ docker pull clojure@sha256:715f5931fde120b7fba831a37b8d7bd058501b60faeac36e3dc9293061b75d39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.8 MB (165788875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27a3d91dc48321bf3469441421a5c8f474bfc76af1c3fce0f565a51105c2104a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:12:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:12:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:12:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:12:23 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 05:12:23 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 05:12:23 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:13:32 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 05:13:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 05:13:32 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 05:13:33 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 05:13:33 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 05:13:33 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 05:13:33 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1e6e7ca511b93bafc42241ad75a24d3a61d0ff7191dfcd2337b8c61b142d978b`  
		Last Modified: Tue, 24 Nov 2026 03:39:45 GMT  
		Size: 48.5 MB (48526379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b09f41f1b16ad6745178763658cb7fa8fce45b1b5bd688f90f4b3729a37d4a9`  
		Last Modified: Tue, 24 Nov 2026 05:13:52 GMT  
		Size: 92.6 MB (92613957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0a48808ae1570f40d39aa94714d6456b0bdcd928c52126bb53e651cad3fc39a`  
		Last Modified: Tue, 24 Nov 2026 05:13:50 GMT  
		Size: 20.1 MB (20132426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de54f67159d56fd06fef61457a5cf959e317069b625f6e47b9f01971ca9898ca`  
		Last Modified: Tue, 24 Nov 2026 05:13:49 GMT  
		Size: 4.5 MB (4515184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16504265bd6a934758a9603f4bee2850a352acfdb0a17408a135cf3d69675fb8`  
		Last Modified: Tue, 24 Nov 2026 05:13:49 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.1` - unknown; unknown

```console
$ docker pull clojure@sha256:aff9e4b735a00cceca0bd0bfb18e1c83f81e256024720593b3025b069fc4ee50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4277523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:294a6a334c3701cf51681e09b91390feda7a4cce8ab37717200f6a3e5c991dc8`

```dockerfile
```

-	Layers:
	-	`sha256:2fb9967f9f862470a0284bde5c5ee68ba4329f6e9cbf311d73b05f8f6ba69612`  
		Last Modified: Tue, 24 Nov 2026 05:13:49 GMT  
		Size: 4.3 MB (4257298 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2627e63891164afac4a5537b1abeedd1bb2689a44b51b43db28633289cb6c5b`  
		Last Modified: Tue, 24 Nov 2026 05:13:49 GMT  
		Size: 20.2 KB (20225 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-2.13.1` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:f612374c5341f000a36e007dba86bdd27bf8f51b65b19b33697db239213c29d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.5 MB (164458406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:838b78dd9040c73a24f022c64040e2e0976070ac270b3913ec4e9e101917d889`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:17:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:17:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:17:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:17:43 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 05:17:43 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 05:17:43 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:18:53 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 05:18:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 05:18:53 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 05:18:55 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 05:18:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 05:18:55 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 05:18:55 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:5253071eb43403aa847239c81e354ab7f008a222e5f909eb323f9db555504a95`  
		Last Modified: Tue, 24 Nov 2026 03:39:43 GMT  
		Size: 48.4 MB (48412261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2184cfc73f6169b73c794cfaec8070014f7b26ff39a7c20457d266444d2ac0de`  
		Last Modified: Tue, 24 Nov 2026 05:19:15 GMT  
		Size: 91.6 MB (91554012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b25059658aa85475f419891479b72ca0017742c67c5fa41189dd96335006243`  
		Last Modified: Tue, 24 Nov 2026 05:19:13 GMT  
		Size: 20.0 MB (19975994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1319ff1a4ac2e999f5b310ebbbf53f2d9a0553929168302828d382e171be339e`  
		Last Modified: Tue, 24 Nov 2026 05:19:12 GMT  
		Size: 4.5 MB (4515210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ae3f2e266cbbebddff10479e65d0cca3f13503f17478539f49b911a60fe4047`  
		Last Modified: Tue, 24 Nov 2026 05:19:12 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.1` - unknown; unknown

```console
$ docker pull clojure@sha256:06e1bf0b5dcf5816ff003607f0de73020b814a048e4c820782cb0aedf606377e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4277400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac155bfd005e3b7bfed9c3d1022b91d8cb2c6647ae99e93ee357affb53ddeb8b`

```dockerfile
```

-	Layers:
	-	`sha256:e1f2c79372cbc3167790acc6f0b0ea589273eebf969edac8a59772d0ddf139bc`  
		Last Modified: Tue, 24 Nov 2026 05:19:12 GMT  
		Size: 4.3 MB (4256982 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:757ee7e66df36adbb781ea37b24ecb995370f38f867d412ca6430696ddbb39f4`  
		Last Modified: Tue, 24 Nov 2026 05:19:12 GMT  
		Size: 20.4 KB (20418 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-2.13.1` - linux; ppc64le

```console
$ docker pull clojure@sha256:3fc7d3363c77f1ac273562c390feb5307b9b546ae00779075f04a71fdb798bb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.4 MB (167361173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abb9adf165df44f63e189be33e67a26b531fb1cab11f2cde94f83f075b5b20a9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 19:10:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 19:10:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 19:10:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 19:10:03 GMT
ENV LEIN_VERSION=2.13.1
# Fri, 20 Nov 2026 19:10:03 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 19:10:05 GMT
WORKDIR /tmp
# Mon, 23 Nov 2026 23:58:22 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Mon, 23 Nov 2026 23:58:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Mon, 23 Nov 2026 23:58:22 GMT
ENV LEIN_ROOT=1
# Mon, 23 Nov 2026 23:58:26 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 00:27:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 00:27:14 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 00:27:14 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91b2539b6b2dd6d3dc6544d4f155eddc3332014a5921fdd1a505ffcfc835be10`  
		Last Modified: Fri, 20 Nov 2026 19:15:01 GMT  
		Size: 90.1 MB (90119588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cc9f555c8331b4f19081ddcc400529f8fb38c96cbd96ba3326757a1eff4f80a`  
		Last Modified: Mon, 23 Nov 2026 23:59:56 GMT  
		Size: 20.4 MB (20356820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08f35eb705e11e164a0e71bd8bcb8b7d49dc09fdd9c223aea046a0979bd8447a`  
		Last Modified: Mon, 23 Nov 2026 23:59:55 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afe360a5e7803314cc9c00d37034585479038183e5cd38bc203d0a9c34df8100`  
		Last Modified: Tue, 24 Nov 2026 00:27:33 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.1` - unknown; unknown

```console
$ docker pull clojure@sha256:76352e22948e5d508286f281a9db00312d9279a6522e2db9c7416f61a69ad171
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4260951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd8ad85936f5ffd188ceff85de8c77c76dbfaa744546b8d040a5a511123c3926`

```dockerfile
```

-	Layers:
	-	`sha256:7e72fbf4ee2f98708641a20dd7a285aadd9888a85c58933e5173c056a35fef0d`  
		Last Modified: Tue, 24 Nov 2026 00:27:33 GMT  
		Size: 4.2 MB (4240646 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:46512b91c3cd719f67188aea430c040ee1e0bb61d029c0b21368fac4e3956ecd`  
		Last Modified: Tue, 24 Nov 2026 00:27:33 GMT  
		Size: 20.3 KB (20305 bytes)  
		MIME: application/vnd.in-toto+json
