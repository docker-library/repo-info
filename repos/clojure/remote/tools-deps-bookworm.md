## `clojure:tools-deps-bookworm`

```console
$ docker pull clojure@sha256:2b4f40a8a1048fb55b1c4c660c9eb1a8134d4cbab41d1cd0ef3b8e122b431608
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:tools-deps-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:cf4f15f0ab6a12559b07417704d9fa01d1f4c2f70c62877e290d74d210305982
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.1 MB (219121588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba905378c4606bf7e035ada55458d5389ef2ff7be847f7e8a9e0826165ae4c9c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Thu, 29 Oct 2026 20:05:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:05:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:05:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:05:51 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 29 Oct 2026 20:05:51 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:06:04 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 29 Oct 2026 20:06:04 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 29 Oct 2026 20:06:04 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 20:06:04 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 20:06:04 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a4aa977c0d0eb2336dad68941e458308ebf32a717c19ea72e475b9eda8035506`  
		Last Modified: Wed, 28 Oct 2026 00:10:13 GMT  
		Size: 48.5 MB (48524552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e3dfa5bd30a4575f29f47c11755dc2963ddf2668ae5a927528bd94f1ccf406b`  
		Last Modified: Thu, 29 Oct 2026 20:06:26 GMT  
		Size: 92.6 MB (92598868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa2b15e198fe1416e0b97f7a84f3c16695534645557255506e0467ea19bfa040`  
		Last Modified: Thu, 29 Oct 2026 20:06:26 GMT  
		Size: 78.0 MB (77997126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef6db95b847094d793a914d41f9aa6e443802844244299f5aa500eb7aeab00ec`  
		Last Modified: Thu, 29 Oct 2026 20:06:22 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2195e76ca13632813f5bf8ff11d42dcfecae717837655daf8e786c4fd86aa0cf`  
		Last Modified: Thu, 29 Oct 2026 20:06:23 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:b54234cb132699d547b9b3545174b839601a68721e8b40598d72e6a9e385d757
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7365882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ceef91b0e874334b659aaea50f66686925342772db1482c8927d5cf931166caa`

```dockerfile
```

-	Layers:
	-	`sha256:000ceae11d03f8ef145f0e140d540864e8d08db78b795d25036e5a890c44e0e9`  
		Last Modified: Thu, 29 Oct 2026 20:06:23 GMT  
		Size: 7.3 MB (7347957 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d8002941dd7893a8078a14372de7d14b66846488ed8d6af84de5dd167805b65f`  
		Last Modified: Thu, 29 Oct 2026 20:06:22 GMT  
		Size: 17.9 KB (17925 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:bbf00fab69bef9abd4f2a8ae7bebaa748306cf18d5caedc5ea66623fe59ed4c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.9 MB (217924422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac654ab3fcb902d1972ec255764856e92649a831907b8dcb7eff6f7aafac9db2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Thu, 29 Oct 2026 20:06:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:06:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:06:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:06:35 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 29 Oct 2026 20:06:35 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:06:50 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 29 Oct 2026 20:06:50 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 29 Oct 2026 20:06:50 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 20:06:50 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 20:06:50 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:9e2782a4701b518d11b63dd3dedcfe1338e448f72cbf5353e854f2501ffd5e62`  
		Last Modified: Wed, 28 Oct 2026 00:10:21 GMT  
		Size: 48.4 MB (48405170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2ad738533a1a00a9eb4687cc96f8a930b66eee17ab9326a9ed9816ade43d6cf`  
		Last Modified: Thu, 29 Oct 2026 20:07:12 GMT  
		Size: 91.5 MB (91525597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d807ea2d9739a42064d69fb51d6a961295b246794e8364a37158d5be78dc85e3`  
		Last Modified: Thu, 29 Oct 2026 20:07:12 GMT  
		Size: 78.0 MB (77992611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90c11573d6c39f291adf32e1ab5be35100373b3af645ccc2b2c8efbdac03d884`  
		Last Modified: Thu, 29 Oct 2026 20:07:09 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eada5f835048ea00aed91b897cc50b65c5f667cdb7d0c86fc6b4f0b3c9a9c709`  
		Last Modified: Thu, 29 Oct 2026 20:07:09 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:9d9741f091ac3ff50db389a3284534e2f919bb325163eaeb868d0b1b8ba00bdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7371904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1da9dc839852839abb07b817e0470b52d83065e6003c1271a61bb29e383c3a4f`

```dockerfile
```

-	Layers:
	-	`sha256:7d7caedc66e64a4714e01e2595afcf269b88e8420a7bd6584cb2325d49c28ab3`  
		Last Modified: Thu, 29 Oct 2026 20:07:09 GMT  
		Size: 7.4 MB (7353789 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1608a3d69c9fe11a20dc2fa556b372d23e38cbe53eca5694459c8808ef33dead`  
		Last Modified: Thu, 29 Oct 2026 20:07:09 GMT  
		Size: 18.1 KB (18115 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:374cbf44170b339eca7d766eff058852a38adb212e8de53f68716354dee2b762
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.3 MB (226302464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15f212ae1e09fdc000eebc3d7c94dd731481c5b190baa86a95989c3acf35d6cc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Thu, 29 Oct 2026 20:24:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:24:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:24:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:24:06 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 29 Oct 2026 20:24:07 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:39:46 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 29 Oct 2026 20:39:46 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 29 Oct 2026 20:39:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 20:39:47 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 20:39:47 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:76d39433e5f7ff3fe5badf80d81523262cac841a13ec65f6dee0fceb621f6b0f`  
		Last Modified: Wed, 28 Oct 2026 00:20:21 GMT  
		Size: 52.4 MB (52366307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c5412d3cceb0b365d7d52fcdf1d85bc427c038b51388bfd312d83464dc78689`  
		Last Modified: Thu, 29 Oct 2026 20:29:07 GMT  
		Size: 90.1 MB (90111681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c54a0053503438f3a4ea40e3d14e31c2a67cf0e7fa9cd83222c1511df6e178d`  
		Last Modified: Thu, 29 Oct 2026 20:40:26 GMT  
		Size: 83.8 MB (83823432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:073de4d46def3e0b43643c4aff99c23fe0587c35a266445037367ee731084c31`  
		Last Modified: Thu, 29 Oct 2026 20:40:24 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d1536a787cde09df0bd772c261399c7283d08202b925345f560d7e07464ace9`  
		Last Modified: Thu, 29 Oct 2026 20:40:24 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:f1dd888ce03f47424f7a85014ad248b92adca9a5266849f90e84ca408be3a051
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7352665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a90a6474489f96030cf6f44e0aec7106bc8f8633ebefac5a7f7e2ff4d35b833`

```dockerfile
```

-	Layers:
	-	`sha256:ab87222653a7adba59bb58c83c13a167ddbee9078a9006258c28d724dc8eb05b`  
		Last Modified: Thu, 29 Oct 2026 20:40:25 GMT  
		Size: 7.3 MB (7334656 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:00000008956758fa2bef5de5a94acaf37c53b212278d8e8cd5450823ed3661af`  
		Last Modified: Thu, 29 Oct 2026 20:40:24 GMT  
		Size: 18.0 KB (18009 bytes)  
		MIME: application/vnd.in-toto+json
