## `clojure:lein-2.13.0`

```console
$ docker pull clojure@sha256:dad41c523a58d1e0b0e8ffa540cccc546deb101bcddede24b71e7dd594a3c44f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:lein-2.13.0` - linux; amd64

```console
$ docker pull clojure@sha256:e7782937d8ada75fa6b7d330b675060a7ea8f359bc7c7d96d30d45588e497da0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.8 MB (165791107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dd03e94110158b48f01e961247f78483df543308ac3d1960ee0c0b145aa5694`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:13:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:13:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:13:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:13:54 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:13:54 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:13:54 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:15:09 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:15:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:15:09 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:15:11 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:15:11 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:15:11 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:15:11 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a4aa977c0d0eb2336dad68941e458308ebf32a717c19ea72e475b9eda8035506`  
		Last Modified: Wed, 28 Oct 2026 00:10:13 GMT  
		Size: 48.5 MB (48524552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e9066d3cdabe190daecb2288ec2c003178c76a01ef2e6e74eb22c6988706687`  
		Last Modified: Wed, 28 Oct 2026 02:15:22 GMT  
		Size: 92.6 MB (92618058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:903ceb1414cdf38a065a44af9fbf079da804c975f4ff27935c2a2478ae77696f`  
		Last Modified: Wed, 28 Oct 2026 02:15:28 GMT  
		Size: 20.1 MB (20132860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:145a2921a58c79c295d7f45d4c19d07585a8cb1db9fa380ff03b2726bccf8d7c`  
		Last Modified: Wed, 28 Oct 2026 02:15:27 GMT  
		Size: 4.5 MB (4515206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:924024e4139fada67fc52b8664b62006c10fbe8482ffc73847fa62a43483d53f`  
		Last Modified: Wed, 28 Oct 2026 02:15:27 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0` - unknown; unknown

```console
$ docker pull clojure@sha256:69b695e81570b33da3aa40edb309b02436681618fe1d6b2498d42a57feb6bec9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4276927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5c118717fab0ab7934eeb0dedbd97027e80f268319a316af61265b64c7e8df8`

```dockerfile
```

-	Layers:
	-	`sha256:f5ac0d44c3a1eb3824c9b6e182ace459e2ea7002d8d7612b57c505d37efbd665`  
		Last Modified: Wed, 28 Oct 2026 02:15:27 GMT  
		Size: 4.3 MB (4257298 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7052fd9ae6f68f8d4239d37b3d86111f0d4ec567d2046c90d7c0673c3fee59a5`  
		Last Modified: Wed, 28 Oct 2026 02:15:27 GMT  
		Size: 19.6 KB (19629 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-2.13.0` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:133890e9ec31dbf55e2586b3160e99ef76e63c2cce6c46bcca1ccac8af741477
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164425980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2286402fdfe136696a3c24eb812cbe8a6f68b05afdbc2a2c670dabc0250a62ce`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:15:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:15:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:15:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:15:25 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:15:25 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:15:25 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:16:46 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:16:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:16:46 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:16:47 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:20:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:20:48 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:20:48 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:9e2782a4701b518d11b63dd3dedcfe1338e448f72cbf5353e854f2501ffd5e62`  
		Last Modified: Wed, 28 Oct 2026 00:10:21 GMT  
		Size: 48.4 MB (48405170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4a976de4671571253efcc6db2f3e8d64838bb9607fa1d8e8a84041149e93605`  
		Last Modified: Wed, 28 Oct 2026 02:17:24 GMT  
		Size: 91.5 MB (91528800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:626427b8268cc6adf0d9f3643c0cc1c003104f9f0d29477867a802ff4c86a6a5`  
		Last Modified: Wed, 28 Oct 2026 02:17:21 GMT  
		Size: 20.0 MB (19976408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:168babdaaec6ec8c80f84d7017f488ac392a41084197337b15f645eadf2e315c`  
		Last Modified: Wed, 28 Oct 2026 02:17:21 GMT  
		Size: 4.5 MB (4515173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:333523d169244c2de2cc2caadf7c3ce269b1d41041c837ea15e6066ab6e7febf`  
		Last Modified: Wed, 28 Oct 2026 02:20:56 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0` - unknown; unknown

```console
$ docker pull clojure@sha256:db523cf79efb3da95e844a67a522c9aad469e81d8e40f33b4d3c1dbf688f5004
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4275850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96eda47ac273fd5ed1c1c66589cba2511e4ef8d25c8964213ee7f6513a3d2aba`

```dockerfile
```

-	Layers:
	-	`sha256:63c214ce483d0b2707154f9eeae4793d798801604fb6380357b67602e1f49c13`  
		Last Modified: Wed, 28 Oct 2026 02:20:56 GMT  
		Size: 4.3 MB (4256982 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d67e59fb15800a16fbe3d730f9a63a0f4daad1fe2462642c8d7eb699edd1a557`  
		Last Modified: Wed, 28 Oct 2026 02:20:56 GMT  
		Size: 18.9 KB (18868 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-2.13.0` - linux; ppc64le

```console
$ docker pull clojure@sha256:b72ce8fbc82b60583ed7dfef470b309258573c3f3173a921a0271a0db629274e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.5 MB (168495479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59f0229f42640e7359d67dc51aa8c0f6f41bca1ec19e049f6a6507902803ff65`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 09:27:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 09:27:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 09:27:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:27:28 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 09:27:28 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 09:27:28 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 09:30:48 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 09:30:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 09:30:48 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 09:30:52 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 10:15:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 10:15:15 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 10:15:15 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:76d39433e5f7ff3fe5badf80d81523262cac841a13ec65f6dee0fceb621f6b0f`  
		Last Modified: Wed, 28 Oct 2026 00:20:21 GMT  
		Size: 52.4 MB (52366307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec9bc9cd218bf6b52100e0fd864b8cf7afa7878e9ff44a9ffdceb8ebaf8fe8e2`  
		Last Modified: Wed, 28 Oct 2026 09:32:31 GMT  
		Size: 91.3 MB (91256257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b0e9ca2fd65ef232f874e78ff200335d84fc1361373b8701e823b20addc6d65`  
		Last Modified: Wed, 28 Oct 2026 09:32:29 GMT  
		Size: 20.4 MB (20357270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be47868f2bb901420f927f2b6a9066c441cb6af9133ffe522df5c312a6eb8c24`  
		Last Modified: Wed, 28 Oct 2026 09:32:28 GMT  
		Size: 4.5 MB (4515215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6436811141b7dfa580caa0750675d750635ab74c452a67dda50860b10791e74`  
		Last Modified: Wed, 28 Oct 2026 10:15:40 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0` - unknown; unknown

```console
$ docker pull clojure@sha256:a079492b2a487e7ae0ba0c41b665d1d629d4ede63f3a6696b90ea93799fc34b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4262216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:670c59542f16b3ce7cd30067dcf4562e784210fcd350017d17dc46fe8d446f38`

```dockerfile
```

-	Layers:
	-	`sha256:75ada9b7d28db8ae221ec1fef6b3460d0decaf8a26b318b1f2e98fe80e9f11bf`  
		Last Modified: Wed, 28 Oct 2026 10:15:40 GMT  
		Size: 4.2 MB (4242507 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d9ad8827c1df73f3fdb87e5fb22003faedf27fd925049a4af8494bbb014d15c1`  
		Last Modified: Wed, 28 Oct 2026 10:15:39 GMT  
		Size: 19.7 KB (19709 bytes)  
		MIME: application/vnd.in-toto+json
