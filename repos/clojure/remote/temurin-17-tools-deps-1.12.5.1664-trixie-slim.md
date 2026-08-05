## `clojure:temurin-17-tools-deps-1.12.5.1664-trixie-slim`

```console
$ docker pull clojure@sha256:386caf887d1d6b45e05661a7671664d9ca5731fe58f1ea492f4937b1411bcc4f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-1.12.5.1664-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:4b18c03883714e91de8748ae01a87845cd8401408a2c491f5f1665f973ae8f73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.7 MB (244652058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f70bb0d5b8355c5d9bc6593c2f1e6f8150b95c14da778a754e52cf534ef4b1b4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:22:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:22:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:22:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:22:01 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:22:01 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:22:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:22:18 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:22:18 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:22:18 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:22:18 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86e2678f811ed07b998d0be7a6ae6939c3cc892ebc7830f4fd457484280c436e`  
		Last Modified: Wed, 05 Aug 2026 01:22:41 GMT  
		Size: 145.9 MB (145905422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0b0f323b06bdcb7ea52eeded63337d22e7a065dfce19698fba2945443514c88`  
		Last Modified: Wed, 05 Aug 2026 01:22:40 GMT  
		Size: 69.0 MB (68964834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6c1c58359c88b2ccf4d0b9058a87de0e6ff49042f564c862d539e50a503087e`  
		Last Modified: Wed, 05 Aug 2026 01:22:36 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0260a3d1804db05d4d3e4b82cc6aadb5a404fc874c366c09abff0d417a47009`  
		Last Modified: Wed, 05 Aug 2026 01:22:36 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1664-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7fe6ebcec9bf5cd7aba1820ed09d20ff4cde9552e840a7b1a3e5bdc174ec818f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5273329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d9f0211bb28fe6311b4a4fc1c6888b0d5e1b2cd4608891aa06db495effa27af`

```dockerfile
```

-	Layers:
	-	`sha256:c1c9fb43dc4c03d446c754f1e9d9e3a43d6db3717b0fb47ff0e9fb782101219d`  
		Last Modified: Wed, 05 Aug 2026 01:22:37 GMT  
		Size: 5.3 MB (5257364 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7a22589d8c6200c7bac6397dfed5142b8de88021b8f75d6962ca57e962b4506`  
		Last Modified: Wed, 05 Aug 2026 01:22:36 GMT  
		Size: 16.0 KB (15965 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.5.1664-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:6b06e4b7c9896db2f9b1dc12968f0f684b601b94e79b3553c373ff577c26177c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.7 MB (243655437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67339c67d7335cffcf4487d6fa43919d168cd427c69d269824e9a5ce78dd3af0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:51:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:51:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:51:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:51:27 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:51:27 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:51:44 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:51:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:51:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:51:45 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:51:45 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24d526b80b809ae409b0477f4a1648e5059f2e96f68f46a17c50d752a94e117b`  
		Last Modified: Tue, 04 Aug 2026 02:52:09 GMT  
		Size: 144.7 MB (144724288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa76750f91a17fb2064086c5fa5455859c3f16ddca223c2a63649bb18f831566`  
		Last Modified: Tue, 04 Aug 2026 02:52:08 GMT  
		Size: 68.8 MB (68786399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:332af6ce59cccae049b43d35f500113d157f374886aa01ba0b09dec4d3147f87`  
		Last Modified: Tue, 04 Aug 2026 02:52:05 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23b776ce739af0762cdf7eade486d711ff54d03ec6808104839d639005c86912`  
		Last Modified: Tue, 04 Aug 2026 02:52:05 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1664-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b5aa9a21066baad2bebb75502d4886df7537e4d53415b8b523b27a5896644e35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5279209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04ba4c11cf23156f993fe74b5ecfef4f4effc1f90803e021629123b5cd03a5c2`

```dockerfile
```

-	Layers:
	-	`sha256:9cb14d7a359ea005edb2d2994ef49edf2e71bf167a88a7917bcd9ce26e804ca5`  
		Last Modified: Tue, 04 Aug 2026 02:52:05 GMT  
		Size: 5.3 MB (5263125 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a064819f66ee26cf43406cc11bd8c6c4ae88ba63f18588370bcc9c6ca375200d`  
		Last Modified: Tue, 04 Aug 2026 02:52:05 GMT  
		Size: 16.1 KB (16084 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.5.1664-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:74e3dacae3be553c1ce86559352e82590adfd79638652d25a51b71f76b8b7a62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253744508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27a30f925402891687145a591411993d5b8a9a4d1c3556cd3aee762fb34e62c8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 05:13:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 05:13:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 05:13:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 05:13:18 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 05:13:19 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 05:21:59 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 05:22:00 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 05:22:01 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 05:22:01 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 05:22:01 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a169777f230e111bc35c8dadc9c9fea79da3ddb0bbdcaf99b3b0e2564864cda`  
		Last Modified: Tue, 04 Aug 2026 05:17:56 GMT  
		Size: 145.8 MB (145766123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78b4f3fbfd7f926b793653598a4646e7683dd704632a8de1dc9bb1c46bd1f335`  
		Last Modified: Tue, 04 Aug 2026 05:22:39 GMT  
		Size: 74.4 MB (74375866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1ac5c8285ecf56660b739fe7feab940db15c6da590dbc3388983f820bd9d19b`  
		Last Modified: Tue, 04 Aug 2026 05:22:37 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e177e0cf46a27a794a1ece6a0594eb239d4daf093e505a742836aa3186ee6ad1`  
		Last Modified: Tue, 04 Aug 2026 05:22:36 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1664-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4be0244ecf1969e9624922ea2b41ceac1a935f603118b2aa29374292392ce24b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5277749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95b1a05d8af5bf334e625aa28374e1bb7ee6888ca1cab458d6c946bb5f883aff`

```dockerfile
```

-	Layers:
	-	`sha256:5ba5e48c28448e59bd81be5ea11bbd6c5a945e79d608265aac57c970daa5e69f`  
		Last Modified: Tue, 04 Aug 2026 05:22:37 GMT  
		Size: 5.3 MB (5261735 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:905e328c1bd30b9f7fa14a10cf4507aa39fed0d7ce5f0298f608c66d23226e0f`  
		Last Modified: Tue, 04 Aug 2026 05:22:36 GMT  
		Size: 16.0 KB (16014 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.5.1664-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:aa6b5d8885c3295d900777bd8672a936864331b81b25304b89b44c1623e1daca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.7 MB (235703313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5608f695b707b71ab8dab1243c7500c702f825e1b36c16607da8f6f9b22483fb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:54:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:54:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:54:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:54:50 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:54:50 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:57:00 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:57:00 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:57:00 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:57:00 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:57:00 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d0de4c460af7fc0af9e405e12a4550d66602028e257a457bafa7c1346c63d82`  
		Last Modified: Tue, 04 Aug 2026 02:56:29 GMT  
		Size: 135.9 MB (135910394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b112da2da92ec6b5753bde70fa6d6f208066d7d28253ae02754686286a19fad`  
		Last Modified: Tue, 04 Aug 2026 02:57:25 GMT  
		Size: 69.9 MB (69945245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcc4cd0f2e87dd6b01a115fae5eb94ea0f2599f2bba96e473247de9a6d56c77b`  
		Last Modified: Tue, 04 Aug 2026 02:57:23 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:039011098d7f681149f71f729302126d93331d843bd1bdc8832f25beee58c01d`  
		Last Modified: Tue, 04 Aug 2026 02:57:24 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1664-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:69be26a8b30832043c8f3e162816f3c054c116ec3bf8592c35c7fa404f696895
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5268299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41922cbaba51f683cb9c77eb2ff462453d1015333ff8957ad64efbcfa2dddb82`

```dockerfile
```

-	Layers:
	-	`sha256:fdae177a04a322a73c736bd8d7ce4778df8c7bab41b75df57f6d3c68d7e682bc`  
		Last Modified: Tue, 04 Aug 2026 02:57:23 GMT  
		Size: 5.3 MB (5253288 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49e8517f9771c38be75e26c3647ab937c0cd548d038bb86933dbe1affa11d2ca`  
		Last Modified: Tue, 04 Aug 2026 02:57:23 GMT  
		Size: 15.0 KB (15011 bytes)  
		MIME: application/vnd.in-toto+json
